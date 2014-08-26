require 'rspec'
require 'watir-webdriver'
require_relative 'paths'


APP_FILE = File.expand_path('../../src/application', File.dirname(__FILE__))
require APP_FILE

$HOST = 'http://localhost'
$PORT = 5500
$BASE_URL = "#{$HOST}:#{$PORT}"

Sinatra::Application.app_file = APP_FILE
Sinatra::Application.port = 5500


class DLiteWorld
  #include Rack::Test::Methods 
  include NavigationHelpers

  def initialize
    app
  end

  def app
    server = fork do
      DLite.port = $PORT
      DLite.run!
    end

    process Process.daemon(server)
  end
end

browser = Watir::Browser.new

World do
  @world = DLiteWorld.new
end


Before do
  @browser = browser
end


at_exit do
  binding.pry
  browser.close
  @world.exit
end

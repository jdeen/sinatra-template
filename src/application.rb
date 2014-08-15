require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra'
require 'slim'
require 'pry'

require_relative 'config/database'

class DLite < Sinatra::Base
  
  # Basic app information
  set :author_name, 'Ziyan Junaideen'
  set :author_company, 'Guru of IT'
  set :author_email, 'jdeen-solutions@outlook.com'

  set :owner_name, 'Ziyan Junaideen'
  set :owner_company, 'Guru of IT'
  set :owner_email, 'jdeen-solutions@outlook.com'

  enable :static  
  
  set :root, File.dirname(__FILE__)

  # Configuration
  configure do
    set :server, :puma
    
    @db = ::DCustom::DatabaseSetup.new()
  end

end

require_relative 'helpers/init'
require_relative 'routes/init'
require_relative 'models/init'

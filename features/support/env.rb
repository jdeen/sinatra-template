require 'rspec'
require 'watir-webdriver'
require_relative '../../src/application'

browser = Watir::Browser.new

World do
  DLite.start!
end

Before do
  @browser = browser
end

at_exit do
  browser.close
end

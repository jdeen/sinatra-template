require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra'

require_relative 'helpers/init'
require_relative 'routes/init'

# Configuration
configure do
  set :server, :puma

  @options = OpenStruct.new(
    title: 'DWeb Lite',
    author: 'Guru of IT, Corporate IT Soutions',
    url_base: 'http://localhost:4242'
  )

end

class DLite < Sinatra::Base
  

end

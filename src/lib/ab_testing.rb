require 'yaml'
require 'send_with_us'

class ABTesting

  def initialize
    load_config
  end

  def load_config
    path = File.expand_path('../config/send_with_us.yaml', File.dirname(__FILE__))
    raise "SendWithUs - config file not found!" unless File.exist?(path) 

    data = YAML.load_file(path)
    @swu = SendWithUs::Api.new( api_key: data['production'], debug: true )
  end

  def register_email user = nil, token = nil
    raise ArgumentError, 'User must not be nil' if user.nil?
    
    contact = {}
    data = {}

    contact[:address] = user.email
    contact[:name] = user.display_name

    data[:first_name] = user.person.personal_detail.first_name
    
    @swu.send_with('tem_k7AKTDQ4Ap7MLWfpVfdqX3', contact, data)
  end


end

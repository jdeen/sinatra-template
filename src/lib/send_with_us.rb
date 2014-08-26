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
    @swu = SendWithUs::Api.new( api_key: data['production'] )
  end

  def register_email user = nil, token = nil
    raise ArgumentError, 'User must not be nil' if user.nil?

    data = {}
    data[:first_name] = person.personal_details.first_name
    @swu.send_with('tem_k7AKTDQ4Ap7MLWfpVfdqX3', data)
  end


end

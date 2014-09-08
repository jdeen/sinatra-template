ROOT = File.expand_path('../../', File.dirname(__FILE__))
bind "tcp://0.0.0.0:10090"
rackup "#{ROOT}/src/config/config.ru"
threads 0,4
activate_control_app

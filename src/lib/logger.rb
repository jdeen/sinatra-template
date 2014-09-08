require 'logging'

module DCustom
  class Logger
    
    def initialize options = nil
      @options = options
      setup
    end

    def setup
      Logging.color_scheme( 'bright',
        :levels => {
          :info => :green,
          :warn => :yellow,
          :error => :red,
          :fatal => [:white, :on_red]
        },
        :date => :blue,
        :logger => :cyan,
        :message => :magenta
      )

      Logging.appenders.stdout(
        'stdout',
        :layout => Logging.layouts.pattern(
          :pattern => '[%d] %-5l %c: %m\n',
          :color_scheme => 'bright'
        )
      )
    end

    def get instance = 'common'
      raise ArgumentError, 'Instance should not be nil' if instance.nil?
      
      logger = Logging.logger[instance]
      logger.add_appenders(
        Logging.appenders.stdout,
        Logging.appenders.file("#{instance}.log")
      )

      return logger
    end

  end
end

module Lib
  module Media
    class Audio

      def initialize audio = nil
        update_instance(audio)
      end

      private

      # @fn       def update_instance audio = nil {{{
      # @brief    Used the datasource to fetch data and update curren object
      def update_instance audio = nil
        unless audio.nil?
          @audio = audio
        end
      end # }}}
    end
  end
end

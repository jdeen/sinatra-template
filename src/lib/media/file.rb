module Lib
  module Media
    class File

      def initialize file = nil
        update_instance(file)
      end

      private 

      # @fn       def update_instance image = nil {{{
      # @brief    Used the datasource to fetch data and update curren object
      def update_instance file = nil
        unless file.nil?
          @file = file
        end
      end # }}}
    end
  end
end

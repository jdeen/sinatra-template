module Lib
  module Media
    class Video

      def initialize video = nil
        update_instance(video)
      end

      private

      # @fn       def update_instance video = nil {{{
      # @brief    Used the datasource to fetch data and update curren object
      def update_instance video = nil
        unless video.nil?
          @video = video
        end
      end # }}}


require_relative '../album'

module Lib
  module Media
    module Collection
      class Image

        # @fn       def Image.all album = nil {{{
        # @brief    Will return a list of all images and if an album is supplied, will
        #           provide a list of images for the specific album
        def self.all album = nil
          if album.nil?
            images = DB::Media::Image.all.map { |image| Lib::Media::Image.new(image) }
          else
            images = DB::Media::Image.all.map { |image| Lib::Media::Image.new(image) }
          end

          images
        end # }}}

      end
    end
  end
end

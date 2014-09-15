require_relative 'base'

module Lib
  module Media

    class Images

      include ::Lib::Media::Base

      def initialize
      end

      # @fn       def create album_id = nil, description = nil, file = nil {{{
      # @brief    Uploads an image and records it in the database.
      def create album_id = nil, description = nil, file = nil
        album = get_album(album_id)
        image = DB::Media::Image.create( albums: [ album ], description: description, file: file )

        [true, 'Image Uploaded successfully', image]
      end # }}}

    end

  end
end

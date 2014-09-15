require_relative 'album'

module Lib
  module Media

    # @class      class Image {{{
    # @brief      Abstracts the use of database Image class with the website
    class Image

      def initialize
      end

      # @fn       def create album_id = nil, description = nil, file = nil {{{
      # @brief    Uploads an image and records it in the database.
      def create album_id = nil, description = nil, file = nil
        album = Album.new.load(album_id).album
        image = DB::Media::Image.create( albums: [ album ], description: description, file: file )

        [true, 'Image Uploaded successfully', image]
      end # def create }}}

    end # }}}
  end
end

require_relative 'album'

module Lib
  module Media

    # @class      class Image {{{
    # @brief      Abstracts the use of database Image class with the website
    class Image

      def initialize image = nil
        update_instance(image)
      end

      # @fn       def create album_id = nil, description = nil, file = nil {{{
      # @brief    Uploads an image and records it in the database.
      def create album_id = nil, description = nil, file = nil
        album = Album.new.load(album_id).album
        image = DB::Media::Image.create( description: description, file: file )
        image.albums << album
        image.save

        update_instance(image)

        [true, 'Image Uploaded successfully', image]
      end # def create }}}

      def albums
        @albums ||= @image.albums.map { |album| Lib::Media::Album.new(album) }
      end

      def description
        @image.description
      end

      def square_thumb
        @image.file.square_thumb.url
      end

      private 

      # @fn       def update_instance image = nil {{{
      # @brief    Used the datasource to fetch data and update curren object
      def update_instance image = nil
        unless image.nil?
          @image = image
          @album = nil
        end
      end # }}}

    end # }}}
  end
end

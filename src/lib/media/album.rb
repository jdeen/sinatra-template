module Lib
  module Media

    # @class    class Album {{{
    # @brief    Represents an Album in the website
    class Album
      
      attr_reader :album
      attr_reader :title, :description, :images, :audios, :videos, :files

      def initialize album = nil
        update_instance(album)
      end

      # @fn       def load album_id = nil {{{
      # @brief    Loads an album for the current Album object
      def load album_id = nil
        raise ArgumentError, 'Album ID is required' if album_id.nil?

        if album_id.nil?
          @album = get_default_album
        else 
          album_id = album_id.to_i
          @album = DB::Media::Album.get(album_id)
          @album = get_default_album if @album.nil?
        end

        update_instance(album)

        self
      end # def load }}}

      def images
        @album.images
      end

      private
      
      # @fn       def get_default_album {{{
      # @brief    Returns the default album. If not exists, creates it.
      def get_default_album
        album = DB::Media::Album.first_or_create( title: 'Default' )
        album.update( description: 'The default album' )
        album
      end # def get_default_album }}}

      # @fn       def update_instance album = nil {{{
      # @brief    Used the datasource to fetch data and update curren object
      def update_instance album = nil
        unless album.nil?
          @album = album
          @title = album.title
          @description = album.description
        end
      end # }}}
    end # }}}
  end
end

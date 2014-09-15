module Lib
  module Media
    module Base
      
      # @fn       def get_album album_id = nil {{{
      # @brief    Return the album which is identified by the id
      def get_album album_id = nil

        if album_id = nil
          get_default_album
        else
          DB::Media::Album.get(album_id.to_i)
        end

      end # def get_album }}}

      # @fn       def get_default_album {{{
      # @brief    Returns the default album. If not exists, creates it.
      def get_default_album
        DB::Media::Album.first_or_create( title: 'Default' ).update( description: 'The default album' )
      end # def get_default_album }}}

    end
  end
end

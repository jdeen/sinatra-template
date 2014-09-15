module Lib
  module Media
    module Base
      
      # @fn       def get_album album_id = nil {{{
      # @brief    Return the album which is identified by the id
      def get_album album_id = nil

        if album_id = nil
          get_default_album
        else
          album = DB::Media::Album.get(album_id.to_i)
          
          if album.nil?
            get_default_album
          else
            album
          end
        end

      end # def get_album }}}


    end
  end
end

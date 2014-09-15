module Lib
  module Media

    class Images

      include Base

      def initialize
      end

      def create album_id = nil, description = nil, file = nil
        
        album = DB::Media::Album.get(album_id)
        DB::Media::Image.create()
        [false, 'failed']
      end

    end

  end
end

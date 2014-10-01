require_relative '../album'

module Lib
  module Media
    module Collection
      class Album

        def self.all
          albums = DB::Media::Album.all.map { |album| Lib::Media::Album.new(album) }
        end

      end
    end
  end
end

require_relative '../../../lib/media/collection/album'

class DLite < Sinatra::Base

  get '/admin/media/albums' do
  
    albums = Lib::Media::Collection::Album.all

    locals = {
      title: 'Albums',
      albums: albums,
    }

    slim :'admin/media/albums', layout: :'layouts/admin', locals: locals
  end

end

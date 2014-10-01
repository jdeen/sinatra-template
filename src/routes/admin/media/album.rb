require_relative '../../../lib/media/album'

class DLite < Sinatra::Base

  get '/admin/media/album/:id' do |id|
    id = id.to_i

    album = Lib::Media::Album.new.load(id)

    locals = {
      title: 'Albums',
      album: album,
    }

    slim :'admin/media/album', layout: :'layouts/admin', locals: locals
  end

end

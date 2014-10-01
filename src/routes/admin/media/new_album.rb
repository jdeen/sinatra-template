class DLite < Sinatra::Base

  get '/admin/media/albums/new' do

    locals = {
      title: 'New Album'
    }

    slim :'admin/media/new_album', layout: :'layouts/admin', locals: locals
  end

end

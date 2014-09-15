class DLite < Sinatra::Base

  get '/admin/media/albums' do

    locals = {
      title: 'Albums'
    }

    slim :'admin/media/albums', layout: :'layouts/admin', locals: locals
  end

end

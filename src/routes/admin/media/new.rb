class DLite < Sinatra::Base

  get '/admin/media/new' do

    locals = {
      title: 'New Media'
    }

    slim :'admin/media/new', layout: :'layouts/admin', locals: locals
  end

end

class DLite < Sinatra::Base

  get '/admin/media/new' do

    locals = {
      title: 'Wonder of Asia'
    }

    slim :'admin/media/new', layout: :'layouts/admin', locals: locals
  end

end

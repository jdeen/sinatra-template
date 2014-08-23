class DLite < Sinatra::Base

  get '/' do
    redirect link('/')
  end

  get '/:locale/' do
    slim :'pages/index', layout: :'layouts/layout_single_page', locals: { title: 'Wonder of Asia' }
  end

end

class DLite < Sinatra::Base

  get '/' do 
    slim :'pages/index', layout: :'layouts/layout_single_page', locals: { title: 'Wonder of Asia' }
  end

end

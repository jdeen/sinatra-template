class DLite < Sinatra::Base

  get '/:locale/locale' do
    slim :'locale', layout: :'layouts/layout', locals: { title: ''} 
  end

end

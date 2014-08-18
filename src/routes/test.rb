class DLite < Sinatra::Base

  get '/test', restricted_to: :user do
    slim :'pages/test', layout: :'layouts/layout', locals: { title: 'Test' }
  end

end

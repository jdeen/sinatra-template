class DLite < Sinatra::Base

  get '/rjs' do 
    slim :'pages/rjs', layout: :'layouts/layout'
  end

end

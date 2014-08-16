class DLite < Sinatra::Base

  get '/rjs' do 
    slim :'pages/rjs', layout: :'layouts/bootstrap_base'
  end

end

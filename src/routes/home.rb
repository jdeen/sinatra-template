class DLite < Sinatra::Base

  get '/' do 
    erb :index, layout: :'layouts/layout'
  end

end

class DLite < Sinatra::Base

  get '/' do 
    erb :test, layout: :'layouts/layout'
  end

end

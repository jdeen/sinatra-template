class DLite < Sinatra::Base

  get '/auth/register' do
    slim :'auth/register', layout: :'layouts/layout'
  end

end

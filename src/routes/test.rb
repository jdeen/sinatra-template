class DLite < Sinatra::Base

  get '/test' do
    swu = ab_testing
    swu.register_email(user)
    slim :'pages/test', layout: :'layouts/layout', locals: { title: 'Test' }
  end

end

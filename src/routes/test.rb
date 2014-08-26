class DLite < Sinatra::Base

  get '/test' do
    swu = ab_testing
    binding.pry
    slim :'pages/test', layout: :'layouts/layout', locals: { title: 'Test' }
  end

end

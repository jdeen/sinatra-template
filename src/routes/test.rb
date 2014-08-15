class DLite < Sinatra::Base

  get '/test' do 
    puts User.all.length
    user = User.create(email: 'Abc', password: 'abc')
    puts User.all.length
  end

end

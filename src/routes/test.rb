class DLite < Sinatra::Base

  get '/test', restricted_to: :user do
    binding.pry
  end

end

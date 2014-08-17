class DLite < Sinatra::Base 
  
  get '/flash' do
    if flash[:success].nil?
      flash[:success] = "Success!"
      "not yet success"
    else
      flash[:sucess]
    end
  end

end

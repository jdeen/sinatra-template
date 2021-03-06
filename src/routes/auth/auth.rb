class DLite < Sinatra::Base

  get '/:locale/auth/login' do
    slim :'auth/login', layout: :'layouts/layout', locals: { title: 'Existing Members - Login to Wonder of Asia' }
  end

  post '/auth/login' do
    if env['warden'].authenticate!
      flash[:success] = env['warden'].message
      user = env['warden'].user
      redirect '/'
      # if session[:return_to].nil?
      #   redirect '/'
      # else
      #   redirect session[:return_to]
      # end
    else
      flash[:error] = 'Error logging in. Are you sure that your Email and Password are correct?'
      redirect '/auth/login'
    end
  end

  get '/auth/logout' do
    env['warden'].raw_session.inspect
    env['warden'].logout
    flash[:success] = 'Successfully logged out'
    redirect '/'
  end

  post '/auth/unauthenticated' do
    session[:return_to] = env['warden.options'][:attempted_path]
    puts env['warden.options'][:attempted_path]
    flash[:error] = env['warden'].message || "You must log in"
    redirect '/auth/login'
  end

end

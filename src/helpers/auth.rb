
class DLite < Sinatra::Base

  set :restricted_to do |role|
    condition do
      user = env['warden'].user
      unless env['warden'].authenticated?(:password) && user && user.type == role
        redirect '/auth/login'
      end
    end
  end

end

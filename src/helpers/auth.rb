class DLite < Sinatra::Base
  
  def logged_in?
    ! env['warden'].user.nil?
  end

  def display_name
    if logged_in? 
      env['warden'].user.display_name
    end
  end
end

require 'warden'

class DLite < Sinatra::Base 
  use Warden::Manager do |config|
    # Tell Warden how to save our User info into a session.
    # Sessions can only take strings, not Ruby code, we'll store
    # the User's `id`
    config.serialize_into_session{|user| user.id }
    # Now tell Warden how to take what we've stored in the session
    # and get a User from that information.
    config.serialize_from_session{|id| User.get(id) }

    config.scope_defaults :default,
      # "strategies" is an array of named methods with which to
      # attempt authentication. We have to define this later.
      strategies: [:password],
      # The action is a route to send the user to when
      # warden.authenticate! returns a false answer. We'll show
      # this route below.
      action: 'auth/unauthenticated'
    # When a user tries to log in and cannot, this specifies the
    # app to send the user to.
    config.failure_app = self
  end
  
  set :restricted_to do |role|
    condition do
      user = env['warden'].user
      unless env['warden'].authenticated? && user && user.type == role
        flash[:warning] = 'You need to login to continue'
        redirect '/auth/login'
      end
    end
  end

end

Warden::Manager.before_failure do |env,opts|
  env['REQUEST_METHOD'] = 'POST'
end


Warden::Strategies.add(:password) do
  def valid?
    params['user']['email'] && params['user']['password']
  end

  def authenticate!
    user = User.first(email: params['user']['email'])
    if user.nil?
      fail!("The username you entered does not exist.")
    elsif user.authentic? params['user']['password']
      success!(user)
    else
      fail!("Could not log in")
    end
  end
end


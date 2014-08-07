class DLite < Sinatra::Base
  def not_found
    halt 404, 'The page you are looking for doesn\'t exist'
  end
end

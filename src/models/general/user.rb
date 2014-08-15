class User
  include DataMapper::Resource

  property :id,       Serial
  property :email,    String, length: 50
  property :password, String, length: 255
end

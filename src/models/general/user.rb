class User
  include DataMapper::Resource
  include BCrypt

  property :id,       Serial
  property :email,    String, length: 50
  property :password, BCryptHash
end

class User
  include DataMapper::Resource
  include BCrypt

  property :id,       Serial
  property :email,    String, length: 50
  property :password, BCryptHash

  def authentic? attempted_password
    self.password == attempted_password
  end

end

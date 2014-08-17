require 'bcrypt'

class User
  include DataMapper::Resource
  include ::BCrypt

  # Associations
  has 1, :personal_detail

  property :id,               Serial
  
  property :created_at,       DateTime
  property :updated_at,       DateTime

  property :email,            String,       length: 50
  property :password,         BCryptHash
  property :display_name,     String,       length: 25

  def authentic? attempted_password
    self.password == attempted_password
  end

end

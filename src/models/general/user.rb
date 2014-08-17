require 'bcrypt'

class User
  include DataMapper::Resource
  include ::BCrypt

  # Associations
  has 1, :personal_detail

  property :id,               Serial
  
  property :created_at,       DateTime
  property :updated_at,       DateTime

  property :email,            String,       length: 50, unique: true
  property :password,         BCryptHash
  property :display_name,     String,       length: 25

  def authentic? password
    self.password == password
  end

end

require 'bcrypt'

class User
  include DataMapper::Resource
  include ::BCrypt

  property :id,               Serial
  
  property :created_at,       DateTime
  property :updated_at,       DateTime

  property :type,             Enum[:user, :admin],      default: :user
  property :email,            String,                   length: 50, unique: true
  property :password,         BCryptHash
  property :display_name,     String,                   length: 25

  belongs_to :person

  def authentic? password
    self.password == password
  end

end

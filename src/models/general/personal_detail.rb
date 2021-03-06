
class PersonalDetail
  include DataMapper::Resource

  # Associations
  belongs_to :person

  property  :id,            Serial

  property  :created_at,    DateTime
  property  :updated_at,    DateTime

  property  :first_name,    String,   length: 25
  property  :last_name,     String,   length: 25
  property  :dob,           Date
end

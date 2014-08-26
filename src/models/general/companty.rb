class Company
  include DataMapper::Resource

  property    :id,            Serial
  property    :created_at,    DateTime
  
  property    :name,          String,     length: 50
  property    :description,   Text,       length: 5000

  belongs_to :owner, 'Person'

  has 1, :hq, 'Branch'
  has n, :branches
end

class Branch
  include DataMapper::Resource

  property    :id,          Serial

  property    :telephone1,  String,   length: 20
  property    :telephone2,  String,   length: 20
  property    :fax,         String,   length: 20
  
  has 1, :location
end

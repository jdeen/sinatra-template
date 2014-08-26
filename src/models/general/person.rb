class Person
  include DataMapper::Resource

  property    :id,    Serial
  
  has 1, :user
  has 1, :personal_detail

  has n, :companies
end

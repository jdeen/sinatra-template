class Location
  include DataMapper::Resource

  property    :id,            Serial

  property    :address,       String,     length: 200
  property    :address2,      String,     length: 200
  property    :city,          String,     length: 20
  property    :postal_code,   String,     length: 10
  property    :state,         String,     length: 20
  property    :country_code,  String,     length: 3
  property    :lat,           Decimal,    precision: 13, scale: 10 
  property    :lng,           Decimal,    precision: 13, scale: 10
end

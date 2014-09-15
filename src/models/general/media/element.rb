module Media
  class Element
  
    include DataMapper::Resource

    property      :id,            Serial
    
    property      :created_at,    DateTime
    property      :updated_at,    DateTime

    property      :description,   String,       length: 254
  end

  # Types of media available

  class Image   < Element; end
  class File    < Element; end
  class Audio   < Element; end

end

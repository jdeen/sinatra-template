module Media
  class Category

    include DataMapper::Resource

    property      :id,              Serial
    
    property      :title,           String,       length: 50
    property      :description,     String,       length: 500

    has n, :media_elements
  end
end

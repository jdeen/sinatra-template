module DB
  module Media
    class Album

      include DataMapper::Resource

      property      :id,              Serial
      
      property      :title,           String,       length: 50
      property      :description,     String,       length: 500

      has n, :images, through: Resource
      has n, :files,  through: Resource
      has n, :audios, through: Resource
    end
  end
end

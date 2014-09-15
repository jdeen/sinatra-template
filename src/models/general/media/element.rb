module DB
  module Media
    # class Element
    # 
    #   include DataMapper::Resource

    #   property            :id,            Serial
    #   
    #   property            :created_at,    DateTime
    #   property            :updated_at,    DateTime

    #   property            :description,   String,       length: 254
    # end

    # Types of media available

    class Image
      include DataMapper::Resource

      property            :id,            Serial
      
      property            :created_at,    DateTime
      property            :updated_at,    DateTime

      property            :description,   String,       length: 254
      
      mount_uploader      :file,          ImageUploader

      has n, :albums, through: Resource
    end

    class File
      include DataMapper::Resource

      property            :id,            Serial
      
      property            :created_at,    DateTime
      property            :updated_at,    DateTime

      property            :description,   String,       length: 254
      
      mount_uploader      :file,          FileUploader
      
      has n, :albums, through: Resource
    end

    class Audio
      include DataMapper::Resource

      property            :id,            Serial
      
      property            :created_at,    DateTime
      property            :updated_at,    DateTime

      property            :description,   String,       length: 254
      
      mount_uploader      :file,          FileUploader
      
      has n, :albums, through: Resource
    end

    class Video
      include DataMapper::Resource

      property            :id,            Serial
      
      property            :created_at,    DateTime
      property            :updated_at,    DateTime

      property            :description,   String,       length: 254
      
      property            :type,          Enum[:youtube]
      property            :link,          String,       length: 254
      
      has n, :albums, through: Resource
    end

  end
end

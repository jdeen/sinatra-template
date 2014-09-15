module DB
  module Media
    class Element
    
      include DataMapper::Resource

      property            :id,            Serial
      
      property            :created_at,    DateTime
      property            :updated_at,    DateTime

      property            :description,   String,       length: 254

      has n, :albums, through: Resource
    end

    # Types of media available

    class Image   < Element 
      mount_uploader      :file,          ImageUploader
    end

    class File    < Element
      mount_uploader      :file,          FileUploader
    end

    class Audio   < Element
      mount_uploader      :file,          FileUploader
    end

    class Video   < Element
      property            :type,          Enum[:youtube]
      property            :link,          String,       length: 254
    end

  end
end

module DB
  module Media
    class ImageUploader < CarrierWave::Uploader::Base
      
      include CarrierWave::MiniMagick

      def store_dir
        "#{ROOT}/src/public/uploads/#{model.class.to_s.downcase}/#{model.id}"
      end

      version :square_thumb do
        process resize_to_fill: [512, 512]
      end

      version :square_thumb_small do
        process resize_to_fill: [128, 128]
      end

    end
  end
end

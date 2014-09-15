module Media
  class ImageUploader < CarrierWave::Uploader::Base
    
    include CarrierWave::MiniMagic

    version :square_thumb do
      process resize_to_fill: [512, 512]
    end

    version :square_thumb_small do
      process resize_to_fill: [128, 128]
    end

  end
end

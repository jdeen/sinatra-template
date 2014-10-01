module DB
  module Media
    class FileUploader < CarrierWave::Uploader::Base

      def store_dir
        "#{ROOT}/src/public/uploads/#{model.class.to_s.downcase}/#{model.id}"
      end

    end
  end
end

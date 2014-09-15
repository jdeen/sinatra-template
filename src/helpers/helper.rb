require_relative '../lib/media/images'

class DLite < Sinatra::Base
  def not_found
    halt 404, 'The page you are looking for doesn\'t exist'
  end

  def logger instance = 'common'
    @logger_helper ||= DCustom::Logger.new(settings)
    @logger_helper.get instance
  end

  def media_images
    @media_images ||= ::Lib::Media::Images.new
  end
end

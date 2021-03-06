require_relative '../../../lib/media/image'

class DLite < Sinatra::Base

  post '/admin/media/images' do
    album_id      = params[:media][:album_id]
    description   = params[:media][:description]
    file          = params[:media][:file]

    status, message, image = Lib::Media::Image.new.create( album_id, description, file )

    if status == true
      flash[:success] = "Image uploaded succesfully."
    else
      flash[:error] = "There was an error uploading the image."
    end

    redirect '/admin/media/new'
  end

end

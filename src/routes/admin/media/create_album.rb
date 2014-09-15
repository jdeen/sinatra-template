require_relative '../../../lib/media/image'

class DLite < Sinatra::Base

  post '/admin/media/albums' do
    title         = params[:album][:title]
    description   = params[:album][:description]

    status, message, image = Lib::Media::Album.new.create( title, description )

    if status == true
      flash[:success] = "Image uploaded succesfully."
    else
      flash[:error] = "There was an error uploading the image."
    end

    redirect '/admin/media/new'
  end

end

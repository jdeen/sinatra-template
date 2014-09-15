require_relative '../../../lib/media/image'

class DLite < Sinatra::Base

  post '/admin/media/albums' do
    title         = params[:album][:title]
    description   = params[:album][:description]

    status, message, image = Lib::Media::Album.new.create( title, description )

    if status == true
      flash[:success] = "Album created succesfully."
    else
      flash[:error] = "There was an error creating the album."
    end

    redirect '/admin/media/albums'
  end

end

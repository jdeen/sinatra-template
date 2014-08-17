class DLite < Sinatra::Base

  get '/auth/register' do
    slim :'auth/register', layout: :'layouts/layout'
  end

  post '/auth/register' do
    # Extracting details
    user = OpenStruct.new(params[:user])
    pd = OpenStruct.new(params[:personal_details])

    user = User.create(
      display_name: user.display_name,
      email: uesr.email,
      password: user.password, 
    )

    pd = PersonalDetails.create(
      first_name: pd.first_name,
      last_name: pd.last_name,
      user: user,
    )

    if user.saved?
      flash[:success] = 'Success! Account Created'
      redirect '/auth/login'
    end

    flash[:error] = 'Failed! Error creating your account!'
    redirect '/auth/register'
  end
end

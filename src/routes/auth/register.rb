class DLite < Sinatra::Base

  get '/auth/register' do
    slim :'auth/register', layout: :'layouts/layout', locals: { title: 'Register for Free - Wonder of Asia' }
  end

  post '/auth/register' do
    # Extracting details
    user = OpenStruct.new(params[:user])
    pd = OpenStruct.new(params[:personal_details])

    user = User.create(
      display_name: user.display_name,
      email: user.email,
      password: user.password, 
    )

    pd = PersonalDetail.create(
      first_name: pd.first_name,
      last_name: pd.last_name,
      user: user,
    )

    if user.saved?
      flash[:success] = 'Success! Account Created. Please login to continue'
      redirect '/auth/login'
    end

    flash[:error] = 'Failed! Error creating your account!'
    redirect '/auth/register'
  end
end

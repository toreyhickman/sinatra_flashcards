post '/signup' do
	User.create(:username => params[:username], :password => params[:password])
	redirect '/'
end

post '/login' do
	@user = User.find_by_username(params[:username])
	if @user.password == params[:password]
    session[:user] = @user.id
    redirect '/'
  else
    redirect '/'
  end
end
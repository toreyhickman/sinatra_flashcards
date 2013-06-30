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

get '/u/:id' do
	@user = User.find(params[:id])
	erb :user
end

get '/logout' do
	session.clear
	redirect '/'
end
post '/signup' do
	@user = User.create(:username => params[:username], :password => params[:password])
  session[:user] = @user.id
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

get '/logout' do
  session.clear
  redirect "/"
end

get '/profile/:user_id' do
  if params[:user_id].to_i == session[:user].to_i
    erb :profile
  else
    redirect "/profile/#{session[:user]}"
  end
end
# Move to user
post '/signup' do
  @user = User.create(params[:signup])
  session[:user_id] = @user.id
  redirect '/'
end

# Move to user?
post '/login' do
  @user = User.find_by_username(params[:login][:username])
  p User.find_by_username(params[:login][:username])
  p params[:login][:password]
  if @user.password == params[:login][:password]
    session[:user_id] = @user.id
  end
  redirect '/'
end

# Mover to user?
get '/logout' do 

  session.clear
  redirect '/'
end

# Move to user
# routes to a user profile
get '/profile/:username' do
  @user = User.find(session[:id])
  erb :profile
end

# Move to user
get'/round_stats/:round_id/' do
  @round = Round.find(params[:round_id])
  @user = User.find(session[:id])
  erb :round_stats
end

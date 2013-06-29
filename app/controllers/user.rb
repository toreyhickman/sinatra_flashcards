post '/signup' do
  @user = User.create(params[:signup])
  session[:user_id] = @user.id
  redirect '/'
end


post '/login' do

  @user = User.find_by_username(params[:login][:username])
  
  if @user.password == params[:login][:password]
    session[:user_id] = @user.id
  end
  redirect '/'
end

get '/logout' do 

  session.clear
  redirect '/'
end


get '/profile/:username' do
  @user = User.find(session[:id])
  erb :profile
end


get'/round_stats/:round_id/' do
  @round = Round.find(params[:round_id])
  @user = User.find(session[:id])
  erb :round_stats
end

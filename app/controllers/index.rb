before do
  @decks = Deck.all
end

get '/' do
  erb :index
end

post '/login' do
  @user = User.find_by_username(params[:login][:username])
  if @user.password == params[:login][:password]
    session[:user_id] = @user.id
    p "Hello"
    p session[:user_id]
  end
  redirect '/'
end

get '/logout' do 

  session.clear
  redirect '/'
end

# routes to a user profile
get '/profile/?' do
  #@user = User.find(session[:id])
  erb :profile
end

get'/round_stats/:round_id/' do
  @round = Round.find(params[:round_id])
  @user = User.find(session[:id])
  erb :round_stats
end

get '/play/:deck_id' do
  @deck = Deck.find(params[:deck_id])
  erb :play_round
end

post '/signup' do
  # @user = User.create(params)
  session[:user_id] = 5
  redirect '/profile'
end

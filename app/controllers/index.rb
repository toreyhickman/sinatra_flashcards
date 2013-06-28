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
  end
  redirect '/'
end

get '/logout' do 

  session.clear
  redirect '/'
end

# routes to a user profile
get '/profile/:username' do
  @user = User.find(session[:id])
  erb :profile
end

get'/round_stats/:round_id/' do
  @round = Round.find(params[:round_id])
  @user = User.find(session[:id])
  erb :round_stats
end

get '/play/:deck_name' do
  puts params[:deck_name]
  unless session[:round_id]
    create_game(params[:deck_name])
  end
  
  deck = Deck.find(session[:deck_id])
  @card = deck.cards.sample
  
  erb :play_round
end

post '/signup' do
  # @user = User.create(params)
  session[:user_id] = 5
  redirect '/profile'
end

post '/next' do

  card = Card.find(params[:id])

  if params[:guess] == card.answer
    session[:score] += 1
    puts "Score increased to #{session[:score]}."
  end

  puts "Score outside the loop is #{session[:score]}."

  redirect '/play/:deck_name'
end

post '/finish' do

end




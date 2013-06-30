# do
#   redirect "/" unless session[:user]
# end

get '/' do
  @decks = Deck.all
  erb :index
end

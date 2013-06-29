
before do
  @decks = Deck.all
end

get '/' do
  erb :index
end








def fake_user
  User.create(:username => Faker::Internet.user_name, :password => "password")
end

5.times { fake_user }

addition_deck = Deck.new(:name => "Simple Addition", :description => "Practice your addition math facts.")
addition_deck.save

Card.create(:prompt => "5 + 6", :answer => "11", :deck_id => 1)
Card.create(:prompt => "2 + 3", :answer => "5", :deck_id => 1)
Card.create(:prompt => "7 + 9", :answer => "16", :deck_id => 1)
Card.create(:prompt => "3 + 4", :answer => "7", :deck_id => 1)
Card.create(:prompt => "4 + 8", :answer => "12", :deck_id => 1)

subtraction_deck = Deck.new(:name => "Simple Substitution", :description => "Practice your subtraction math facts.")
subtraction_deck.save

Card.create(:prompt => "9 - 4", :answer => "5", :deck_id => 2)
Card.create(:prompt => "8 - 7", :answer => "1", :deck_id => 2)
Card.create(:prompt => "6 - 4", :answer => "2", :deck_id => 2)
Card.create(:prompt => "5 - 1", :answer => "4", :deck_id => 2)
Card.create(:prompt => "8 - 5", :answer => "3", :deck_id => 2)

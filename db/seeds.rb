def fake_user
  User.create(:username => Faker::Internet.user_name, :password => "password")
end

5.times { fake_user }

add = Deck.create!(:name => "Simple Addition", :description => "Practice your addition skills.")
sub = Deck.create!(:name => "Simple Subtraction", :description => "Practice your subtraction skills.")

add.cards.create!(:front => "5 + 6", :back => "11")
add.cards.create!(:front => "2 + 3", :back => "5")
add.cards.create!(:front => "7 + 9", :back => "16")
add.cards.create!(:front => "3 + 4", :back => "7")
add.cards.create!(:front => "4 + 8", :back => "12")

sub.cards.create!(:front => "9 - 4", :back => "5")
sub.cards.create!(:front => "8 - 7", :back => "1")
sub.cards.create!(:front => "6 - 4", :back => "2")
sub.cards.create!(:front => "5 - 1", :back => "4")
sub.cards.create!(:front => "8 - 5", :back => "3")

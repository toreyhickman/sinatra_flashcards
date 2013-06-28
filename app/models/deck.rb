class Deck < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :description, :presence => true

  has_many :cards
  has_many :rounds
end

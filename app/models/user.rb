class User < ActiveRecord::Base
  include 'BCrypt'

  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true

  has_many :rounds

  # BCrypt methods
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

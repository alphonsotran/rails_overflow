class User < ApplicationRecord
  has_many :votes
  has_many :comments
  has_many :questions
  has_many :answers

  has_secure_password

  # def password
  #   @password = BCrypt::Password.new(hash_password)
  # end

  # def password=(new_password)
  #   @password = BCrypt::Password.create(new_password)
  #   self.hash_password = @password
  # end

  # def self.authenticate(email, user_password)
  #   @user = User.find_by(email: email)
  #   if @user && @user.password == user_password
  #     return @user
  #   else
  #     nil
  #   end
  # end
end

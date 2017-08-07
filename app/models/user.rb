class User < ApplicationRecord
  has_many :votes
  has_many :comments
  has_many :questions
  has_many :answers
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commenteable, polymorphic: true
  has_many :votes, as: :voteable
end

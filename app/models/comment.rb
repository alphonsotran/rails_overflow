class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commenteable, polymorphic: true
end

class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  enum  status: { pending: 0, approved: 1, rejected: -1 }
end

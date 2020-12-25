class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum trade_status: { pending: 0, traded: 1, rejected: -1 }
end

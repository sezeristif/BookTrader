class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :pages, presence: true
  belongs_to :user
  has_many :comments
  has_many :trades
end

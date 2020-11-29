class User < ApplicationRecord
  before_create :set_username
  has_many :trades
  validates :email, presence: true
  # validates :username, presence: true
  has_many :books, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments

  private

  def set_username
    self.username = email.split("@").first.capitalize
  end
end

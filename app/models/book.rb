class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :pages, presence: true
  belongs_to :user
  has_many :comments
  has_many :trades
  before_create :downcase_title

  def self.search(search)
    if search
      where(["downcase_title LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  def downcase_title
    self.downcase_title = title.downcase
  end
end

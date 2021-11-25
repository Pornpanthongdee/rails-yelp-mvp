class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

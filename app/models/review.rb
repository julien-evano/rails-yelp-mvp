class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5, 0] }, numericality: { only_integer: true }
  validates :rating, presence: true
end

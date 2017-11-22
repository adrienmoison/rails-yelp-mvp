class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false, inclusion: {in: 0..5}
  validates :rating, numericality: true
end

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: (0..5) }, numericality: { only_integer: true }
  validates :content, presence: true

  def stars
    star_string = ''
    rating.times do
      star_string += '⭐️'
    end
    star_string
  end
end

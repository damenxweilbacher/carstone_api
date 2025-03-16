class Car < ApplicationRecord
  validates :model, presence: true
  validates :year, numericality: {less_than_or_equal_to: 2025}

  belongs_to :make
end

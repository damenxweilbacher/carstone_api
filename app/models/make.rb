class Make < ApplicationRecord
  validates :company, presence: true
  validates :region, presence: true
  
  has_many :cars
end

class Team < ApplicationRecord
  has_many :drivers
  has_many :cars

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :year_founded, presence: true
end

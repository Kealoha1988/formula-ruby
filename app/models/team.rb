class Team < ApplicationRecord
  has_many :drivers
  has_many :cars
  belongs_to :owner

  

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :year_founded, presence: true
end
class Owner < ApplicationRecord
  has_one :team

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
class Owner < ApplicationRecord
  has_one :team

  accepts_nested_attributes_for :team
  
  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
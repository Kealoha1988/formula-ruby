class Driver < ApplicationRecord
  belongs_to :team
  belongs_to :car

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :age, presence: true
end

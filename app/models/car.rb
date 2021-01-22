class Car < ApplicationRecord
  belongs_to :team
  has_many :drivers

  validates :name, presence: true, uniqueness: true
  validates :make, presence: true
  validates :engine_manufacturer, presence: true
end

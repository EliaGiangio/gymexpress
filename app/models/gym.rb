class Gym < ApplicationRecord
  has_many :barbells
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 5 }
end

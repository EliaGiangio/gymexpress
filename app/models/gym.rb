class Gym < ApplicationRecord
  has_many :barbells, dependent: :destroy
  accepts_nested_attributes_for :barbells, allow_destroy: true
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :logo, presence: true
end

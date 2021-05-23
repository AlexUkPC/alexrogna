class Tech < ApplicationRecord
  has_and_belongs_to_many :works
  has_and_belongs_to_many :educations
  validates :name, uniqueness: true
  has_one_attached :logo
end

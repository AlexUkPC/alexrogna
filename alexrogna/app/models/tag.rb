class Tag < ApplicationRecord
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :skills
  validates :name, uniqueness: true
end

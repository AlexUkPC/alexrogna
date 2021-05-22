class Linkedin < ApplicationRecord
  has_and_belongs_to_many :skills
  has_one_attached :badge
end

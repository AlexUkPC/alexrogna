class Project < ApplicationRecord
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true
  has_one_attached :cover_image
  has_one_attached :logo
  has_one_attached :main_tech
  has_one_attached :project_logo
end

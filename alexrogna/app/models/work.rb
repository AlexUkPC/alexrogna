class Work < ApplicationRecord
  has_and_belongs_to_many :teches
  accepts_nested_attributes_for :teches, reject_if: :all_blank, allow_destroy: true
  has_rich_text :key_responsibilities
end

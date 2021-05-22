class Skill < ApplicationRecord
  has_and_belongs_to_many :books
  has_and_belongs_to_many :hacker_ranks
  has_and_belongs_to_many :free_code_camps
  has_and_belongs_to_many :linkedins
  accepts_nested_attributes_for :books, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :hacker_ranks, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :free_code_camps, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :linkedins, reject_if: :all_blank, allow_destroy: true
  has_one_attached :logo
end

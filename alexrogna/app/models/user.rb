class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  has_one_attached :cover_image
  has_one_attached :profile_image
  has_one_attached :cv
  has_rich_text :long_description_wysiwyg
  has_rich_text :extra_description_for_pdf
end

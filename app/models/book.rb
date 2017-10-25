class Book < ApplicationRecord
  validates :title, presence: true
  has_many :taggings
  has_many :tags, through: :taggings

  has_attached_file :picture  #1
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/  #2

end

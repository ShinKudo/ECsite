class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :bokks, dependent: :destroy
end

class Tag < ApplicationRecord
  belongs_to :user, optional: true
  has_many :taggings, dependent: :destroy
  has_many :boxes, through: :taggings
end

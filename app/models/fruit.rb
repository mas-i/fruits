class Fruit < ApplicationRecord
  has_many :origins, dependent: :destroy
  accepts_nested_attributes_for :origins, allow_destroy: true
  has_many :seasons, dependent: :destroy
  accepts_nested_attributes_for :seasons, allow_destroy: true
  belongs_to :user

  validates :name, presence: true
  validates :variety, presence: true, uniqueness: true
  validates :explain, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end

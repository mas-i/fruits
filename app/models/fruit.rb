class Fruit < ApplicationRecord
  binding.pry
  has_many :varieties
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :explain, presence: true
  validates :image, presence: true
end

class Fruit < ApplicationRecord
  has_many :varieties
  has_many :origins, through: :fruits_origins
  has_many :fruits_origins
  has_many :seasons
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :explain, presence: true
  validates :image, presence: true
end

class Fruit < ApplicationRecord
  has_many :varieties
  has_many :origins, through: :fruits_origins
  accepts_nested_attributes_for :origins
  has_many :fruits_origins
  has_many :seasons
  accepts_nested_attributes_for :seasons
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :explain, presence: true
  validates :image, presence: true
  validates_associated :origins
  validates_associated :seasons

end

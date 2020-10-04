class Origin < ApplicationRecord
  has_many :fruits, through: :fruits_origins
  has_many :fruits_origins

  validates :prefecture, presence: true
  validates :city, presence: true
end

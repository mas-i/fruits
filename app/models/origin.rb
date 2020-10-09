class Origin < ApplicationRecord
  belongs_to :variety

  validates :prefecture, presence: true
  validates :city, presence: true
end

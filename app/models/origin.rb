class Origin < ApplicationRecord
  belongs_to :fruit

  validates :prefecture, presence: true
  validates :city, presence: true
end

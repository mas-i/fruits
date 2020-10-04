class Season < ApplicationRecord
  has_many :fruits

  validates :month, presence: true
end

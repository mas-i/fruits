class Season < ApplicationRecord
  belongs_to :fruit

  validates :month, presence: true

end

class Season < ApplicationRecord
  belongs_to :variety

  validates :month, presence: true

end

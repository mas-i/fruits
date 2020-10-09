class Season < ApplicationRecord
  belongs_to :fruit, optional: true

  mount_uploaders :season, SeasonUploader
  validates :month, presence: true

end

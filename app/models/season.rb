class Season < ApplicationRecord
  belongs_to :fruit, optional: true
  mount_uploaders :url, SeasonUploader

  validates :month, presence: true

end

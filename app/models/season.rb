class Season < ApplicationRecord
  belongs_to :fruit

  validates :month, presence: true
  enum tag: { january: 0, february: 1, march: 2, april: 3,
    may: 4, june: 5, july: 6, august: 7, august: 8, october: 9, november: 10, december: 11, }

end

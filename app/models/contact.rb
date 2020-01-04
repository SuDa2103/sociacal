class Contact < ApplicationRecord
  validates :name, presence: true
  validates :lastmeet, presence: true
  validates :frequency, presence: true
end

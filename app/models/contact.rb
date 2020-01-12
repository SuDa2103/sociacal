class Contact < ApplicationRecord
  validates :name, presence: true
  validates :lastmeet, presence: true
  validates :frequency, presence: true
  has_one_attached :photo

  # if Time.now < lastmeet + (frequency * 7)
  #   warning == true
  # else
  #   warning == false
  # end
end

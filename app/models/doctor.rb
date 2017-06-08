class Doctor < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :gender, presence: true
end

class About < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :dob, presence: true
  validates :location, presence: true
  validates :bio, presence: true
  validates :experience, presence: true
  validates :availability, presence: true

  has_one_attached :profile_image
  has_one_attached :resume
end

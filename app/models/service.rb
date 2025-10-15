class Service < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true

  has_one_attached :icon
end

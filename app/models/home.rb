class Home < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :subtitle, presence: true, length: { maximum: 150 }
  validates :description, presence: true, length: { maximum: 500 }
end

class Home < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :title, presence: true, length: { maximum: 100 }
  validates :subtitle, presence: true, length: { maximum: 150 }
end

class Education < ApplicationRecord
  validates :degree, presence: true
  validates :institution, presence: true
  validates :year, presence: true
  validates :grade, presence: true
end

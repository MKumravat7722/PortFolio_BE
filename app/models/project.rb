class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :tech_stack, presence: true
  validates :live_url, presence: true
  validates :github_url, presence: true
end

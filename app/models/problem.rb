class Problem < ApplicationRecord
  
  STATUSES = ["ongoing", "completed", "postponed"]
  
  belongs_to  :user

  enum status: [:ongoing, :completed, :postponed]

  validates :name, :site_name, :link, :status, presence: true

  has_rich_text :description
end

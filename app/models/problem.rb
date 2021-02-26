class Problem < ApplicationRecord
  # belongs_to  :user
  enum status: [:ongoing, :completed, :postponed]

  validates :name, :site_name, :link, :status, presence: true



end

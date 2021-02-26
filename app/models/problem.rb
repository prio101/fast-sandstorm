class Problem < ApplicationRecord
  # belongs_to  :user
  enum status: [:ongoing, :completed, :postponed] 
end

class User < ApplicationRecord
  has_many :problems

  validates :full_name, :email, presence: true
end

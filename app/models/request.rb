class Request < ApplicationRecord
  belongs_to :meeting
  belongs_to :user
  enum status: [:pending, :approved, :rejected]
end

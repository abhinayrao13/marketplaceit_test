class Meeting < ApplicationRecord
  belongs_to :event
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests
end

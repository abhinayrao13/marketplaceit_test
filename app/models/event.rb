class Event < ApplicationRecord
  has_many :meetings, inverse_of: :event, dependent: :destroy
  accepts_nested_attributes_for :meetings, reject_if: :all_blank, allow_destroy: true
end

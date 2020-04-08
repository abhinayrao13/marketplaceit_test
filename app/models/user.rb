class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:attendee, :host, :admin]
  has_many :requests, dependent: :destroy
  has_many :meetings, through: :requests
end

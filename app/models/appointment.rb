class Appointment < ApplicationRecord
  belongs_to :professional
  belongs_to :client
  has_many :payments
end

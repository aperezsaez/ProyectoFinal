class Ocupation < ApplicationRecord
  has_many :user_ocus
  has_many :users, through: :user_ocu
end

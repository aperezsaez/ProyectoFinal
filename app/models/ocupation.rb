class Ocupation < ApplicationRecord
  has_many :prof_ocus
  has_many :users, through: :prof_ocu
end

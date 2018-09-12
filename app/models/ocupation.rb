class Ocupation < ApplicationRecord
  has_many :prof_ocus
  has_many :professionals, through: :prof_ocu
end

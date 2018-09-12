class Professional < ApplicationRecord
  belongs_to :user
  has_one :user
  has_many :prof_ocus
  has_many :ocupations, through: :prof_ocu
end

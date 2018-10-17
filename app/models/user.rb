class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_ocus
  has_many :ocupations, through: :user_ocus
  enum role: [:Admin, :Cliente, :Profesional]
  mount_uploader :photo, ImageUploader
end

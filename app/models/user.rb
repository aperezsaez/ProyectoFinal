class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_ocus
  has_many :ocupations, through: :user_ocu
  enum role: [:Admin, :Cliente, :Profesional]
  mount_uploader :photo, ImageUploader
  has_many :client_appointments, class_name: "Appointment", foreign_key: :client_id, dependent: :destroy
  has_many :professional_appointments, class_name: "Appointment", foreign_key: :professional_id, dependent: :destroy
end

# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable
  enum role: [:Admin, :Cliente, :Profesional]
  mount_uploader :photo, ImageUploader
  has_many :client_appointments, class_name: 'Appointment', foreign_key: :client_id, dependent: :destroy
  has_many :professional_appointments, class_name: 'Appointment', foreign_key: :professional_id, dependent: :destroy
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end
  def self.created_by_day
    group_by_day(:created_at).count
  end
end

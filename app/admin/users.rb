# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :name
    column :id
    column :email do |user|
      user.email.split('@').first.capitalize
    end
    column :email_provider do |user|
      user.email.split('@').last.capitalize
    end
    column :member_since do |user|
      user.created_at.strftime('%F')
    end
    column :role
    column :ocupation
    actions
  end

  form do |f|
    inputs do
      f.input :email
      f.input :password
      f.input :name
      f.input :role
      f.input :phone
      f.input :photo
      f.input :ocupation
      actions
    end
  end

  controller do
    def update
      if params[:user][:password].blank? && params[:user]
        [:password_confirmation].blank?
        params[:user].delete('password')
        params[:user].delete('password_confirmation')
      end
      super
    end
  end

  filter :role, as: :select
  filter :email, as: :select

  permit_params :email, :password, :photo, :role, :name, :bio, :phone
end

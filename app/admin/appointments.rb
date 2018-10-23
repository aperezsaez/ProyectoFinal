# frozen_string_literal: true

ActiveAdmin.register Appointment do
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
    column :id
    column :name
    column :date
    column :description
    actions
  end

  form do |f|
    inputs do
      f.input :name
      f.input :date
      f.input :description
      f.input :client_id, label: 'Client', as: :select,
                          collection: User.pluck(:email, :id)
      f.input :professional_id, label: 'Professional', as: :select,
                                collection: User.where(role: 2).pluck(:email, :id)
      actions
    end
  end

  filter :name, as: :select
  filter :date, as: :date_range

  permit_params :client_id, :professional_id, :description, :date, :name
end

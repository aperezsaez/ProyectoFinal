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
  column :Ocupation do
    user.ocupation.name
  end
end

end

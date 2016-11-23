ActiveAdmin.register DogName do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  column "Name" do |dog_name|
    dog_name.name.titlecase
  end
  column :updated_at
  column :created_at
  actions
end

end

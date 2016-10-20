ActiveAdmin.register CatalogItem do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :creator, :mediaType, :name, :creationDate, :copies, :submission


  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs  :creator, :mediaType, :name, :creationDate, :copies        # builds an input field for every attribute
    f.inputs "Catalog Submission" do
      f.input :submission, :as => :file, :hint => "Must be an image or pdf"
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end

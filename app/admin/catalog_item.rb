ActiveAdmin.register CatalogItem do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  # permit_params :creator, :mediaType, :name, :creationDate, :copies, :submission,
  #               dogs_attributes: [:breed, :age],
  #               dog_names_attributes: [:name]


  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs :creator, :mediaType, :name, :creationDate, :copies # builds an input field for every attribute
    f.has_many :dogs do |dog|
      dog.inputs :breed, :age
      dog.has_many :dog_names do |dog_name|
        dog_name.inputs :name
      end
    end
    f.input :submission, :as => :file, :hint => "Must be an image or pdf"
    f.actions
  end

  show do
    attributes_table do
      CatalogItem.columns.each do |column|
        row column.name unless column.name == "id"
      end
    end
    panel "Dogs" do
      table_for catalog_item.dogs do
        column :breed
        column :age
        panel "Names" do
          table_for catalog_item.dog_names do
            column :name
          end
        end
        # ...
      end
    end
  end
#
# or
#

end

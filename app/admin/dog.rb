ActiveAdmin.register Dog do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :breed, :age,
                dog_names_attributes: [:id, :name, :_destroy],
                dog_dog_names_attributes: [DogDogName.attribute_names, :_destroy]


  form do |f|
    f.inputs :breed, :age
    f.has_many :dog_dog_names,
               heading: 'Dog Names',
               new_record: 'Add Dog Name',
               allow_destroy: true do |dog_dog_name|
      dog_dog_name.input :dog_name_id,
                         as: :select,
                         collection: DogName.all.map{|dog_name| [dog_name.name, dog_name.id]}.uniq,
                         include_blank: false
      dog_dog_name.actions
    end
    f.actions
  end

  show do
    attributes_table do
      row :breed
      row :age

      table_for dog.dog_names do
        column "Names" do |dog_name|
          dog_name.name
        end
      end
    end
  end

  index do
    column :breed
    column :age
    column "Names" do |dog|
      dog.dog_names.map(&:name).join(", ")
    end
    column :created_at
    column :updated_at
    actions
  end

end

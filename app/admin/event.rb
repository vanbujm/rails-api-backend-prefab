ActiveAdmin.register Event do
  permit_params :title, :start_time, :end_time, :description, :location

  filter :title
  filter :start_time

  index do
    selectable_column
    id_column
    column :title
    column :start_time
    column :location
    actions
  end

  form do |f|
    f.inputs "Event Details" do
      f.input :title
      f.input :description, as: :ckeditor
      f.input :start_time, as: :datetime_select
      f.input :end_time, as: :datetime_select
      f.input :location
    end

    f.actions
  end
end

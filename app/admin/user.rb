ActiveAdmin.register User do
  actions :all, except: [:create, :edit, :new, :update]

  index do
    selectable_column
    column :provider
    column :name
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :provider
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end

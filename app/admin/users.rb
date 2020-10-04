ActiveAdmin.register User do
  permit_params :email, :name, :bank , :password, :password_confirmation	
  breadcrumb do
    ['admin', 'user']
  end
  menu label: "User"
  index do	
    selectable_column	
    id_column	

    column :email
    column :name
    column :bank
    column :encrypted_password	
    column :create_at	
    column :update_at	

    actions	
  end	

  form  do |f|	
    f.inputs do	
      f.input :email
      f.input :name
      f.input :bank ,as: :select , :collection => ["VCB","ACB","VIB"]
      f.input :password	
      f.input :password_confirmation	
    end      	
    f.actions      	
  end
end
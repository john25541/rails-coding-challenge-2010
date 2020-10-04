ActiveAdmin.register Transaction do
  permit_params :amount, :transaction_type, :user_id
  breadcrumb do
    ['admin', 'Transaction']
  end
  menu label: "Transaction"
  index do	
    selectable_column	
    id_column	

    column :amount
    column :transaction_type
    column 'user_id', :user_id

    actions	
  end	

  form  do |f|	
    f.inputs do	
      f.input :amount
      f.input :user_id , as: :select , :collection => User.all.map{ |user| [user.name, user.id]}
      f.input :transaction_type ,as: :select , :collection => ["withdraw","deposit"]
    end      	
    f.actions      	
  end
end

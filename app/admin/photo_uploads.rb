ActiveAdmin.register PhotoUpload do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :image

  index do 
  	id_column
  	column "Photos" do |img|
  		image_tag (img.image.url), width: 50
  	end
  	actions
  end

  form do |f|
  	f.inputs do 
  		input :image, required: true, as: :file
  	end
  	f.actions
  end

  show do
  	attributes_table do 
  		row :image do |img|
  			image_tag (img.image.url), width: 50
  		end
  	end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

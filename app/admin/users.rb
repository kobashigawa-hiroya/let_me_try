ActiveAdmin.register User do
  permit_params :title, :content, :image, :name
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :title, :content, :image, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title, :content, :image, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end

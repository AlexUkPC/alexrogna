class Settings::UsersController < ApplicationController
  def show
  end

  def update
    current_user.assign_attributes permitted_params
    changes = current_user.changes

    
      if current_user.save
        flash[:notice] = "Profile's settings updated"
      else 
        flash[:alert] = "Unablet to update the profile settings"
      end
    

    redirect_to settings_user_path
  end
end
private

  def permitted_params
    params.require(:user).permit(
      :salute,
      :short_description,
      :long_description,
      :name,
      :street_number,
      :street_name,
      :city,
      :post_code,
      :phone,
    )
  end
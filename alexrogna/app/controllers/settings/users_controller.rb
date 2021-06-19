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
  def notify_friend
    @email_a_friend = EmailAFriend.new(email_a_friend_params)
    @user=User.first
    if verify_recaptcha(model: @email_a_friend) && @email_a_friend.valid? && @email_a_friend.yemail==""
      NotifierMailer.email_friend(@user, @email_a_friend.name, @email_a_friend.email).deliver_later
      redirect_to root_path, notice: 'Succesfully sent a message to your friend'
    else
      render :fail_notify_friend, status: :unprocessable_entity
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
      :cover_image,
      :profile_image,
      :cv
    )
  end
  def email_a_friend_params
    params.require(:email_a_friend).permit(:name, :email, :yemail, :message)
  end
end
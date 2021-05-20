class HomeController < ApplicationController
  def index
    @user=User.first
    @social_icons = SocialIcon.all.order("order_id ASC")
  end
end

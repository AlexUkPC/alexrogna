class HomeController < ApplicationController
  def index
    @social_icons = SocialIcon.all.order("order_id ASC")
  end
end

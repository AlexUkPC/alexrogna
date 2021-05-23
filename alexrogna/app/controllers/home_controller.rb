class HomeController < ApplicationController
  def index
    @user=User.first
    @social_icons = SocialIcon.all.order("order_id ASC")
    @projects = Project.all
    @skills = Skill.all
    @language_skills = LanguageSkill.all.order('created_at ASC')
  end
end

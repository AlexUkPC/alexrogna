class HomeController < ApplicationController
  def index
    @user=User.first
    @social_icons = SocialIcon.all.order("order_id ASC")
    @projects = Project.all
    @skills = Skill.all
    @language_skills = LanguageSkill.all.order('created_at ASC')
    @works = Work.all.order('start_date DESC')
    @teches = Tech.all.order('order_id ASC')
    @educations = Education.all.order('start_date DESC')
  end
end

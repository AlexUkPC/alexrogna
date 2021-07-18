class HomeController < ApplicationController
  def index
    @user=User.first
    @social_icons = SocialIcon.all.order("order_id ASC")
    @projects = Project.where(hidden: false).order("order_id DESC")
    @skills = Skill.all.order("order_id ASC")
    @language_skills = LanguageSkill.all.order('created_at ASC')
    @personal_skills = PersonalSkill.all.order("order_id ASC")
    @works = Work.all.order('start_date DESC')
    @teches = Tech.all.order('order_id ASC')
    @educations = Education.all.order('start_date DESC')
    @email_a_friend = EmailAFriend.new
    @contact_form = ContactForm.new
  end
end

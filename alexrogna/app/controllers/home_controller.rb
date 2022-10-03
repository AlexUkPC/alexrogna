class HomeController < ApplicationController
  def index
    @user=User.with_rich_text_long_description_wysiwyg.with_rich_text_extra_description_for_pdf.with_attached_profile_image.first
    # @social_icons = SocialIcon.all.order("order_id ASC")
    @social_icons = SocialIcon.last(2)
    # @projects = Project.where(hidden: false).order("order_id DESC")
    @projects = Project.includes(:tags).with_rich_text_description.with_attached_cover_image.with_attached_logo.with_attached_main_tech.with_attached_project_logo.where(hidden: false).order("order_id DESC")
    # @skills = Skill.all.order("order_id ASC")
    @skills = Skill.includes(:books).includes(:linkedins).includes(:hacker_ranks).includes(:free_code_camps).with_attached_logo.all.order("order_id ASC")
    @language_skills = LanguageSkill.all.order('created_at ASC')
    @personal_skills = PersonalSkill.all.order("order_id ASC")
    @works = Work.with_rich_text_key_responsibilities.all.order('start_date DESC')
    # @teches = Tech.all.order('order_id ASC')
    # @teches = Tech.last(2)
    @educations = Education.with_rich_text_courses.all.order('start_date DESC')
    @email_a_friend = EmailAFriend.new
    @contact_form = ContactForm.new
  end
end

class CvController < ApplicationController
  def pdf
    @user=User.first
    @social_icons = SocialIcon.all.order("order_id ASC")
    @projects = Project.all
    @skills = Skill.all.order("id ASC")
    @language_skills = LanguageSkill.all.order('created_at ASC')
    @works = Work.all.order('start_date DESC')
    @teches = Tech.all.order('order_id ASC')
    @educations = Education.all.order('start_date DESC')
    @email_a_friend = EmailAFriend.new
    @contact_form = ContactForm.new
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'CV-AlexRogna', template: '/cv/pdf.html.erb'      # Excluding ".pdf" extension.
      end
    end
  end
end

class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.email_friend.subject
  #
  def email_friend(user, sender_name, receiver_email)
    @social_icons = SocialIcon.all.order("order_id ASC")
    @projects = Project.all
    @skills = Skill.all.order("id ASC")
    @language_skills = LanguageSkill.all.order('created_at ASC')
    @works = Work.all.order('start_date DESC')
    @teches = Tech.all.order('order_id ASC')
    @educations = Education.all.order('start_date DESC')
    @user = user
    @sender_name = sender_name
    attachments['CV-AlexRogna.pdf'] = WickedPdf.new.pdf_from_string(
      render_to_string('/cv/pdf.html.erb', layout: 'pdf')
    )
    mail to: receiver_email,bcc: user.email, subject: 'Check out this CV' 
  end

  def email_me(user, contact_form)
    @contact_form = contact_form
    mail to: user.email, subject: @contact_form.name + ' sent you a message with subject ' + @contact_form.subject 
  end
end

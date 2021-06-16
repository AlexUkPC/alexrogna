class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.email_friend.subject
  #
  def email_friend(user, sender_name, receiver_email)
    @user = user
    @sender_name = sender_name
    if @user.cv.present?
        attachments[@user.cv.filename.to_s] = @user.cv.download
    end
    mail to: receiver_email,bcc: user.email, subject: 'Check out this CV' 
  end

  def email_me(user, contact_form)
    @contact_form = contact_form
    mail to: user.email, subject: @contact_form.name + ' sent you a message with subject ' + @contact_form.subject 
  end
end

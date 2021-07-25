class ApplicationMailer < ActionMailer::Base
  helper HomeHelper, CvHelper, ApplicationHelper
  default from: 'Alex Rogna<contact@alexrogna.com>'
  layout 'mailer'
end

class ApplicationMailer < ActionMailer::Base
  helper HomeHelper, CvHelper, ApplicationHelper
  default from: 'contact@alexrogna.com'
  layout 'mailer'
end

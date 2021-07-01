class ApplicationMailer < ActionMailer::Base
  helper HomeHelper, CvHelper, ApplicationHelper
  default from: 'test@alexrogna.com'
  layout 'mailer'
end

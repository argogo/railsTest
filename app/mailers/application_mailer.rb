class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def mailer(user)
    @user = user
    mail(to: @user.email, subject: 'Test')
  end
end

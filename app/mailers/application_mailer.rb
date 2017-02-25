class ApplicationMailer < ActionMailer::Base
  default from: 'a.gomez18384@gmail.com'
  layout 'mailer'

  def mailer(user)
    @user = user
    mail(to: @user.email, subject: 'Test')
  end



end

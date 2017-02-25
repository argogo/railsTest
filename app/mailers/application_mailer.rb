class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def mailer(user)
    @user = user
    mail(to: @user.email, subject: 'Test')
  end

  def thank_you
    @name = params[:name]
    @email = params[:email] 
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'anilesantonio@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
  end

end

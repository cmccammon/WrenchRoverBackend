class WelcomeMailer < ApplicationMailer
  default from: 'welcome@vehicledatalytics.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.user_email, subject: "Welcome to WrenchRover!")
  end

end

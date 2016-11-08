class WelcomeMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: @user.user_email, subject: "WrenchRover.com finding the best service")
  end

end

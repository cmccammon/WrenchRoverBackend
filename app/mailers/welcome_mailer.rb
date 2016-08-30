class WelcomeMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: @user.user_email, subject: "Welcome to WrenchRover!")
  end

end

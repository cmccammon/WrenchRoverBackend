class PasswordResetMailer < ApplicationMailer

  def password_reset_email(user)
    @user = user
    
    mail(to: @user.user_email, subject: "Password reset requested.")
  end

end

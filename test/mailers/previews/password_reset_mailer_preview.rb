# Preview all emails at http://localhost:3000/rails/mailers/password_reset_mailer
class PasswordResetMailerPreview < ActionMailer::Preview

  def password_reset_mailer_preview
    PasswordResetMailer.password_reset_email(@user)
  end

end

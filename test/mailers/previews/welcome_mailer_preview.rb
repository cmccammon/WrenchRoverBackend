# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  def welcome_mailer_preview
    WelcomeMailer.welcome_email(User.first)
  end
end

class AuthenticateUser
  prepend SimpleCommand

  def initialize(user_email, password)
    @email = user_email
    @password = password
  end

  def call
    JasonWebToken.encode(user_id: user.id) if user
  end

  private
  attr_accessor :user_email, :password

  def user
    user = User.find_by_email(user_email)
    return user if user && user.authenticate(password)

    errors.add  :user_authentication, 'invalid credentials'
    nil
  end
end

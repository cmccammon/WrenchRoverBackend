class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate

    command = AuthenticateUser.call(params[:user_email], params[:password])
    @user = User.find_by_user_email(params[:user_email])

    if command.success?
      render json: {user_id: @user.id, auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end

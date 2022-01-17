class Api::V1::UsersController < ApplicationController

  def create
      user = User.new(user_params)

      if user.password != user.password_confirmation
        render json: { error: 'Passwords do not match.' }, status: 400
      elsif User.find_by(email: user[:email]).present?
        render json: { error: 'Email has already been taken.' }, status: 400
      else
        user.save
        user.update(api_key: SecureRandom.hex)
        render json: UsersSerializer.new(user), status: 201
      end
    end

  private
    def user_params
      params.permit(:email, :password, :password_confirmation)
    end
end

class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email].downcase)

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: UsersSerializer.new(user), status: 200
    else
      render json: { error: 'Invalid entry, bad credentials.'}, status: 400
    end
  end
end

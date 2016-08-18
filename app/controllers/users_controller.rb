class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    user.save
    redirect_to 'index.html.erb'
  end
end

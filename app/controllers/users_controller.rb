class UsersController < ApplicationController
  def index
    @users = User.all
    @family_members = FamilyMember.all
    @title = "Welcome #{current_user.first_name}!"
  end

  def new
    @title = "The Busy Mom"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/users'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/users/new'
    end
  end
end
class SessionsController < ApplicationController
  def new
    @title = "The Busy Mom"
  end

  def create
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/users'
      else
        flash[:danger] = 'Invalid email or password!'
        redirect_to '/login'
      end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
class AccessController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in, only: [:home]
before_action :prevent_login_signup, only: [:signup, :login]


def index
  @user = User.find_by_id(session[:user_id]) 
  if @user
    redirect_to home_path
  end

end

def signup
    @user = User.new
end

   def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "You are now logged in!"
      redirect_to home_path
    else
      render signup 
    end
   end

  def login
  end

  def attempt_login

    if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if !found_user
      flash.now[:alert] = "Invalid username"
      render :login

    elsif !authorized_user
      flash.now[:alert] = "Invalid password"
      render :login

    else
      session[:user_id] = authorized_user.id
      flash[:success] = "You are now logged in."
      redirect_to home_path
    end

  end

  def home
     @user = User.find_by_id(session[:user_id]) 
  end


  def logout
    session[:user_id] = nil
    redirect_to index_path
    flash[:notice] = "Logged out"
    
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_digest)
  end

end


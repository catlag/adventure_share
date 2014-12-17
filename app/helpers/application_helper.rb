module ApplicationHelper
	def confirm_logged_in
    unless session[:user_id]
      redirect_to login_path, alert: "Please log in"
    end
  end

  def prevent_login_signup
    if session[:user_id]
      redirect_to home_path
    end
  end

  def find_user
    @user = User.find_by_id(session[:user_id]) 
  end
end

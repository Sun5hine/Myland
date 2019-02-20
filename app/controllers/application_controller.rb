class ApplicationController < ActionController::Base
  before_action :require_user
  helper_method :current_user, :logged_in?

  def require_user
    redirect_to login_path unless current_user
  end


   def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new
    end
  end

   def logged_in?
    !!current_user.id
  end

   def authorized?
    if !logged_in?
      flash[:authorized] = "You are not logged in"
      redirect_to login_path and return
    end
  end

   def authorized_for(user_id)
    if current_user.admin == true
      true
    elsif current_user.id != user_id.to_i
      flash[:authorized] = "You cannot view a page that does not belong to you"
      redirect_to users_path
    end
  end
end

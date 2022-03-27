class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def current_user_confirmation
    unless current_user == @task.user
      redirect_to tasks_path
    end
  end

end

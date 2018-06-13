class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
    
  def authorize
    unless logged_in?
      # if the user is not logged in store that url they came from in a cookie
      session[:referer] = request.referer
      # display a flash message 
      flash[:danger] = 'You must be logged in to access that.'
      redirect_to new_session_path
    end
  end
end


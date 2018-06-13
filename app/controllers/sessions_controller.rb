class SessionsController < ApplicationController
  def new
    # if there is a site id in the url
    if params[:site_id]
    # store the url in the cookies
      session[:referer] = request.referer
    end
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      flash[:success] = "Welcome, #{@user.name}!"
      # if there is a url the user previously came from, store it in the cookie
      if session[:referer]
      # and redirect them back to that url store in the cookie
        redirect_to session[:referer]
      # then delete that cookie
        session[:referer] = nil
      else
        redirect_to user_path(@user)
      end
    else
      flash[:danger] = 'Incorrect email or password. Please try again.'
    
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    # debugger
    if user
      login_user!(user)
      flash[:success] = ["Successfully signed in!"]
      redirect_to bands_url
    else
      flash[:errors] = ['Invalid login credentials']
      render :new
    end
  end

  def new
    render :new
  end

  def destroy
    logout_user!
    flash[:success] = ["Successfully logged out!"]
    redirect_to new_session_url
  end

end

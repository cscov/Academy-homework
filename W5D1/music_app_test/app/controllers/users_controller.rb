class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = ['Successfully created account!']
      login_user!(@user)
      redirect_to user_url(@user)
    else
      flash[:errors] = ["Invalid email or password"]
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end

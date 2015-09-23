class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_links_path(@user)
    else
      flash.now[:errors] = @user.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @user = :current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

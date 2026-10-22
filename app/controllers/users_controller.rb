class UsersController < ApplicationController
  before_action :require_login, only: [ :profile, :edit, :update_profile ]
  def new
    @user=User.new
  end
  def profile
    @user=current_user
  end
  def edit
    @user=current_user
  end

  def update_profile
    @user=current_user
    if @user.update(edit_prof)
      redirect_to "/profile", notice: "Profile updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to "/books"
    else
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def edit_prof
    params.require(:user).permit(:name, :email)
  end
end

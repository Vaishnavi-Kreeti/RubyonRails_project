class UsersController < ApplicationController
  before_action :require_login, only: [ :profile, :edit, :update, :change_password, :update_password ]
  def new
    @user=User.new
  end
  def profile
    @user=current_user
  end
  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to "/books"
    else
      render :new
    end
  end
  def edit
   @user=current_user
  end
  def update
    @user=current_user
    if @user.update(edit_prof)
      redirect_to profile_path, notice: "Profile updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def change_password
    @user=current_user
  end
  def update_password
    @user=current_user
    current_password = params.dig(:user, :current_password)
    if @user.authenticate(current_password)
      if @user.update(password_params)
        redirect_to profile_path, notice: "Password updated successfully"
      else
        render :change_password, status: :unprocessable_entity
      end
    else
      @user.errors.add(:current_password, "is incorrect")
      render :change_password, status: :unprocessable_entity
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def edit_prof
    params.require(:user).permit(:name, :email)
  end
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end

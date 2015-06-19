class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      log_in(@user)
      flash[:success] = 'High Five! You successfully signed up'
      redirect_to @user
    else
      render 'users/new'
    end
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

# frozen_string_literal: true

class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    if @user.save(user_params)
      redirect_to('/show')
    else
      render('user/edit')
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end
end

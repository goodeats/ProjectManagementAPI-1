class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(user_params[:id])
    if @user.update(user_params[:user])
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:user).permit(:id, :username, :password_digest, :title, :avatar, :token)


class UsersController < ApplicationController
  def new
       @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to First App"
      redirect_to @user
    else
      flash[:error] = "Something is wrong"
      render 'new'
    end
  end

end

class UserController < ApplicationController
  def new_user

  end

  def create
    @user= User.new
    @user.username= params[:username]
    @user.email= params[:email]
    @user.bio= params[:bio]
    @user.save
    puts "User créé!"
    redirect_to "/new_user"
  end
end

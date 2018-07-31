class UserController < ApplicationController
  def new_user

  end

  def create
    User.new
    @user_name= params[:username]
    @user_mail= params[:email]
    @user_bio= params[:bio]
    User.save
    puts "User créé!"
    redirect_to "/new_user"
  end
end

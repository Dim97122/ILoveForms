class UserController < ApplicationController
  def new_user

  end

  def create
    @user_name= params["username"]
    @user_mail= params["email"]
    @user_bio= params["bio"]
    user = User.create(username: @user_name, email: @user_mail, bio: @user_bio)
    puts "User créé!"
    redirect_to "/new_user"
  end
end

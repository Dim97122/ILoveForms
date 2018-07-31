class UserController < ApplicationController
  def new_user

  end
#==============================FORM_FOR_METHOD=============================
=begin
  def create
    @user= User.new
    @user.username= params["user"][:username]
    @user.email= params["user"][:email]
    @user.bio= params["user"][:bio]
    @user.save
    puts "User créé!"
    if user.id != nil
      redirect_to "/html_success"
    else
      redirect_to "/error"
    end
  end
=end
#==============================FORM_TAG_METHOD=============================
=begin
   def create
     @user= User.new
     @user.username= params[:username]
     @user.email= params[:email]
     @user.bio= params[:bio]
     @user.save
     puts "User créé!"
     if user.id != nil
       redirect_to "/html_success"
     else
       redirect_to "/error"
     end
   end
=end
#==============================FORM_HTML_METHOD=============================

   def create
      @user_name= params["username"]
      @user_email= params["email"]
      @user_bio= params["bio"]
      user = User.create(username: @user_name, email: @user_email, bio: @user_bio)
      puts "User créé!"
      if user.id != nil
        redirect_to "/html_success"
      else
        redirect_to "/error"
      end

  end


end

Rails.application.routes.draw do
#=============================STATICS===========================
  get   '/', to: 'static_pages#home'
#==============================USERS============================
  get   '/new_user',  to: 'user#new_user'
  post  '/new_user',  to: 'user#create'
end

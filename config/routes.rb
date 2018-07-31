Rails.application.routes.draw do
#=============================STATICS===========================
  get   '/', to: 'static_pages#home'
  get   '/html_success', to:  'static_pages#html_success'
  get   '/form_tag', to:  'static_pages#form_tag'
  get   '/form_for', to:  'static_pages#form_for'
#==============================USERS============================
  get   '/new_user',  to: 'user#new_user'
  post  '/new_user',  to: 'user#create'
#===============================ERRORS==========================
  get   '/error', to: 'user#error'
end

Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  get 'users/second'

  devise_scope :user do
    root to: "devise/registrations#new"
  end

  devise_for :users, :controllers => { :registrations => "registrations" }
end

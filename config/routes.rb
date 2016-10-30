Rails.application.routes.draw do
  resources:users

  devise_scope :user do
    root to: "devise/registrations#new"
  end

  devise_for :users, :controllers => { :registrations => "registrations" }
end

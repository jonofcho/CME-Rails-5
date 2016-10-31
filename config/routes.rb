Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/registrations#new"
  end

  devise_for :users, :controllers => { :registrations => "registrations" }

  resources:users
  get '/second' => 'users#second'
  get '/third' => 'users#third'
end

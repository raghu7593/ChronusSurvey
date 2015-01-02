ChronusSurvey::Application.routes.draw do
  get "static_pages/credits"
  resources :surveys
  root to: "sessions#new"
  match "/auth/google_oauth2/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
end
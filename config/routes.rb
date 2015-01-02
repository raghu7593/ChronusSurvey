ChronusSurvey::Application.routes.draw do
  get "surveys/index"

  get "surveys/new"

  get "surveys/edit"

  get "surveys/create"

  get "surveys/update"

  get "static_pages/credits"

  root to: "sessions#new"
  match "/auth/google_oauth2/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
end
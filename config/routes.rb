ChronusSurvey::Application.routes.draw do
  get "static_pages/credits"
  get "static_pages/pricing"
  resources :surveys, :path => 'surveys'
  resources :surveys, :path => 'surveys', :only => [] do
  	resources :question_groups, :path => 'question_groups'
  end
  root to: "sessions#new"
  match "/auth/google_oauth2/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
end
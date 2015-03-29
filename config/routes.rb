ChronusSurvey::Application.routes.draw do
  get "static_pages/credits"
  get "static_pages/pricing"
  get "static_pages/contact"
  resources :surveys, :path => 'surveys'
  resources :surveys, :path => 'surveys', :only => [] do
    resources :sections, :path => 'sections' do
      collection do
        post :sort
      end
    end
    resources :sections, :path => 'sections', :only => [] do
      resources :question_groups, :path => 'question_groups' do
        member do
          post :preview
        end
      end
    end
  end
  root to: "sessions#new"
  match "/auth/google_oauth2/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
end
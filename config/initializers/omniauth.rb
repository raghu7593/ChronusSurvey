Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "991405859063-hqa2gregbpcbba69g20m910g9kjfc4cu.apps.googleusercontent.com", "U1ORpZYqWAomA6X24w2Uo0vg"
end
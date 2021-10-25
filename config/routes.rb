Rails.application.routes.draw do
  root "gyms#index"
get "/gyms", to: "gyms#index"
get "/gyms/:id", to:"gyms#show"
end

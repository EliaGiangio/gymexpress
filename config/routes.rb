Rails.application.routes.draw do
  root "gyms#index"
get "/gyms", to: "gyms#index"
end

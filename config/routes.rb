Rails.application.routes.draw do
  namespace :api do
    get "/dinosaurs" => "dinosaurs#index"
    post "/dinosaurs" => "dinosaurs#create"
    get "/dinosaurs/:id" => "dinosaurs#show"
    patch "/dinosaurs/:id" => "dinosaurs#update"
    delete "/dinosaurs/:id" => "dinosaurs#destroy"
  end
end

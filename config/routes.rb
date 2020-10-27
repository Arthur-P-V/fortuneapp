Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortune" => "fortune_pages#fortune_function"
    get "/luckynumbers" => "fortune_pages#lucky"
    get "/bottlepath" => "fortune_pages#bottles"
  end
end

Rails.application.routes.draw do

  resources :preferences
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  scope '/admin' do
    resources :preferences
  end

end

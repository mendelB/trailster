Rails.application.routes.draw do

  namespace :api, defaults:{format: :json} do
    namespace :v1 do
      resources :hikes do
        resources :comments

        member do
          put '/like' => 'hikes#like'
          put '/dislike' => 'hikes#dislike'
        end

      end
    end
  end

end

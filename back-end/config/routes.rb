Rails.application.routes.draw do

  resources :skills
  resources :works
  resources :educations
  resources :resumes
  namespace :api do 
    namespace :v1 do
      resources :mains
      resources :addresses
      resources :socials
      resources :skills
      resources :works
      resources :educations
      resources :resumes
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

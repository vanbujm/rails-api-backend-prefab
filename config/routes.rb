Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => redirect("/admin", status: 302)

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :events, only: [:index]
    end
  end

  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  authenticate :admin_user do
    mount Sidekiq::Web => '/sidekiq'
  end
end

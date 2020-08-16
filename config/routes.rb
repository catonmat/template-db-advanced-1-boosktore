Rails.application.routes.draw do
  root to: 'books#eager_loading' # /
  get '/lazy_loading', to: 'books#lazy_loading', as: :lazy_loading
  get '/eager_loading', to: 'books#eager_loading', as: :eager_loading
end

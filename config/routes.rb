Rails.application.routes.draw do
  get 'series/index'
  root to: "series#index"
  
end

Rails.application.routes.draw do
  devise_for :users
  get 'homes/index'
  root to: "homes#index"
  

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

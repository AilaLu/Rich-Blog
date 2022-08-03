Rails.application.routes.draw do
#  get "/", to: "welcome#home"
 get "/about", to: "pages#about"
 
 resources :blogs #, path: "yay" 把所有的路徑都換成yay
 resources :articles
 resource :users, except: [:new, :destroy] do #only: [:new, :edit] #沒有id的路徑
  get :sign_up #只轉換單一的路徑網址, 把new變成sign_up
  end
end
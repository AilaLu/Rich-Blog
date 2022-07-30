Rails.application.routes.draw do
 get "/", to: "welcome#home"
 get "/about", to: "pages#about"
 
 resources :blogs#, path: "articles" 把所有的路徑都換成articles
end

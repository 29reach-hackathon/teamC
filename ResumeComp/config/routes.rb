Rails.application.routes.draw do
  root "home#index"
  get "resume_create" => "home#resume_create"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resumeのtemplateを表示
  get "resume_template" => "resume_template#index"

  # urlを叩けば上のresumeのtemplateをダウンロードしてくれる
  get "download" => "resume_template#download"
end

Rails.application.routes.draw do
  root 'static_pages#home'

  get '/resume',          to: 'static_pages#resume'
  get '/about',           to: 'static_pages#about'
  get '/work',            to: 'work_collection#work'
  get 'work/ucd',         to: 'work_collection#ux'
  get 'work/boeing',      to: 'work_colllection#boeing'
  get 'work/developer',   to: 'work_collection#developer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

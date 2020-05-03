Rails.application.routes.draw do
  root 'courses#index'
  resources :courses
  resources :students, except: [:destroy]
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'  
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  post 'course_enroll' , to: 'student_courses#create'
end

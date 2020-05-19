Rails.application.routes.draw do
  get 'calendar/show'

  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/crate'

  get 'resumes/destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'page/index'
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  CarrierWaveExample::Application.routes.draw do
#     resources :resumes, only: [:index, :new, :create, :destroy]
#     root "resumes#index"
#  end



end



#celendar
module CalendarHelper
 def calendar(date = Date.today, &block)
    Calendar.new(self, date, block).table
  end
end

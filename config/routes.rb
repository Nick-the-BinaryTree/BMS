Rails.application.routes.draw do
  scope '/api' do
    resources :bananas
  end
end

Rails.application.routes.draw do
  scope '/api' do
    resources :bananas
    post 'user_token' => 'user_token#create'
  end
end

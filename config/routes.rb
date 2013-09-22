TweetsBackboneExample::Application.routes.draw do
  root 'main#index'

  scope 'api' do
    resources :tweets
  end


end

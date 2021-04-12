Rails.application.routes.draw do
  get 'personajes/index'
  get 'personajes/show'
  get 'personaje/index'
  get 'personaje/show'
  get 'episodio/index'
  get 'episodio/show'
  get 'episdes/index'
  get 'episdes/show'
  get 'bienvenida/index'

  root 'bienvenida#index'

  get 'episdes/index' => 'episdes#index'

  get 'episodio/index' => 'episodio#index'

  get 'personaje/index' => 'personaje#index'

  get 'personajes/index' => 'personajes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

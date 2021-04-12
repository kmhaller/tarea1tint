class PersonajesController < ApplicationController
  def index
  end

  def show
    @nombre = params[:search]

    $limit = 10
    $offset = 0
    @personajes_total = []
    lista = ["algo"]

    while lista != []
      lista = []
      response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?limit=#{$limit}&offset=#{$offset}&name=" + @nombre).to_s
      personajes = JSON.parse(response)
      
      personajes.each do |personaje|
        lista.append(personaje["name"])
        @personajes_total.append(personaje["name"])
      end
      $limit += 10
      $offset += 10
    end
  end
end

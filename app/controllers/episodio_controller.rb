class EpisodioController < ApplicationController
  def index
  end

  def show
    @nombre_ep = params[:nombre_ep]
    @temporada = params[:num_param]
    @serie = params[:serie]
    @id_episodio = params[:id_episodio]
  
    response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes/" + @id_episodio).to_s
    @info_episodio = JSON.parse(response)
    

    @personajes = []
    @info_episodio[0]["characters"].each do |personaje|
      @personajes.append(personaje)
    end
  end
end

require 'http'
require 'JSON'

class EpisdesController < ApplicationController
  def index
    
  end

  def show
    @temporada = params[:num_param]
    @serie = params[:serie]
    if @serie == "Breaking+Bad"
      @nombre_serie = "Breaking Bad"
    elsif @serie == "Better+Call+Saul"
      @nombre_serie = "Better Call Saul"
    end

    response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=" + @serie).to_s
    @episodios = JSON.parse(response)
    @ep = []
    @episodios.each do |episodio|
      if episodio["season"] == @temporada
        @ep.append([episodio["title"],episodio["episode_id"]])
      end
    end
  end
end

class BienvenidaController < ApplicationController
  def index
    response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Breaking+Bad").to_s
    episodios = JSON.parse(response)
    @temporadas = []
    episodios.each do |episodio|
      @temporadas.append(episodio["season"])
    end
    @temporadas = @temporadas.uniq

    responsee = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Better+Call+Saul").to_s
    episodioss = JSON.parse(responsee)
    @temporadas_1 = []
    episodioss.each do |episodioo|
      @temporadas_1.append(episodioo["season"])
    end
    @temporadas_1 = @temporadas_1.uniq
  end
end

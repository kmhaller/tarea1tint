class PersonajeController < ApplicationController
  def index
  end

  def show
    @nombre = params[:nombre]
    
    list = @nombre.split(" ")

    @nombre_mas = list.join("+")

    response = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=" + @nombre_mas).to_s
    @info_personaje = JSON.parse(response)

    responsee = HTTP.get("https://tarea-1-breaking-bad.herokuapp.com/api/quote?author=" + @nombre_mas).to_s
    @quotes = JSON.parse(responsee)


    @citas = []
    @quotes.each do |cita|
      @citas.append(cita["quote"])
    end
  end
end

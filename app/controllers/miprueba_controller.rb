class MipruebaController < ApplicationController
  def index
  	# Pasar variables del Controller a las Views.
  	# Usando las variables de instancia. Ej. @titulo = "Mi Web"
  	@titulo = "Soy index"
  	t = Time.now
  	@mes = t.mon
  	@dia = t.day
  end

  def bienvenidos
  	@titulo = "Soy bienvenidos"
  	if params[:id] == 'curso'
  		render :text => "Muy bien: parametro es #{params[:id]}"
  	else
  		render :text => "Error: parametro es #{params[:id]}"
  	end
  	
  end

  def edit
  	@titulo = "Soy Edit"
  end

  def alemania
  	@titulo = "Estoy en Alemania"
  end

  def eeuu
  	@titulo = "Estoy en EEUU"
  end
end

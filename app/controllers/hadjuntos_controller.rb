class HadjuntosController < ApplicationController
  before_action :set_hadjunto, only: [:destroy]
  before_action :set_hogar_proyect, only: [:destroy]
  before_action :authenticate_hogar_proyect!

  def new
  end

  def create
    @hadjunto = Hadjunto.new(hadjunto_params)
    if @hadjunto.save
      redirect_to @hadjunto.hogar_proyect, notice: "Se guardo en la lista"
    else
      redirect_to @hogar_proyect, notice: "No se subio nada"
    end
  end

  def destroy
    @hadjunto.destroy
    redirect_to @hogar_proyect
  end

  private
    def authenticate_hogar_proyect!
      if params.has_key? :hadjunto
        @hogar_proyect = HogarProyect.find(params[:hadjunto][:hogar_proyect_id])
      end
      if @hogar_proyect.nil?
        redirect_to root_path, notice: "no puedes editar un hogar_proyecto ageno"
        return
      end
    end
    def hadjunto_params
      params.require(:hadjunto).permit(:hogar_proyect_id, :imagen)
    end
    def set_hadjunto
      @hadjunto = Hadjunto.find(params[:id])
    end
    def set_hogar_proyect
      @hogar_proyect = @hadjunto.hogar_proyect
    end
end

class IadjuntosController < ApplicationController
  before_action :set_iadjunto, only: [:destroy]
  before_action :set_industrial_proyect, only: [:destroy]
  before_action :authenticate_industrial_proyect!

  def new
  end

  def create
    @iadjunto = Iadjunto.new(iadjunto_params)
    if @iadjunto.save
      redirect_to @iadjunto.industrial_proyect, notice: "Se guardo en la lista"
    else
      redirect_to @industrial_proyect, notice: "No se subio nada"
    end
  end

  def destroy
    @iadjunto.destroy
    redirect_to @industrial_proyect
  end

  private
    def authenticate_industrial_proyect!
      if params.has_key? :iadjunto
        @industrial_proyect = IndustrialProyect.find(params[:iadjunto][:industrial_proyect_id])
      end
      if @industrial_proyect.nil?
        redirect_to root_path, notice: "no puedes editar un industrial_proyecto ageno"
        return
      end
    end
    def iadjunto_params
      params.require(:iadjunto).permit(:industrial_proyect_id, :imagen)
    end
    def set_iadjunto
      @iadjunto = Hadjunto.find(params[:id])
    end
    def set_industrial_proyect
      @industrial_proyect = @iadjunto.industrial_proyect
    end
end

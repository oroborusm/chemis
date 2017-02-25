class HogarProyectsController < ApplicationController
  before_action :set_hogar_proyect, only: [:show, :edit, :update, :destroy]

  # GET /hogar_proyects
  # GET /hogar_proyects.json
  def index
    @hogar_proyects = HogarProyect.all
  end

  # GET /hogar_proyects/1
  # GET /hogar_proyects/1.json
  def show
    @hadjunto = Hadjunto.new
  end

  # GET /hogar_proyects/new
  def new
    @hogar_proyect = HogarProyect.new
  end

  # GET /hogar_proyects/1/edit
  def edit
  end

  # POST /hogar_proyects
  # POST /hogar_proyects.json
  def create
    @hogar_proyect = HogarProyect.new(hogar_proyect_params)

    respond_to do |format|
      if @hogar_proyect.save
        format.html { redirect_to @hogar_proyect, notice: 'Hogar proyect was successfully created.' }
        format.json { render :show, status: :created, location: @hogar_proyect }
      else
        format.html { render :new }
        format.json { render json: @hogar_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hogar_proyects/1
  # PATCH/PUT /hogar_proyects/1.json
  def update
    respond_to do |format|
      if @hogar_proyect.update(hogar_proyect_params)
        format.html { redirect_to @hogar_proyect, notice: 'Hogar proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @hogar_proyect }
      else
        format.html { render :edit }
        format.json { render json: @hogar_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hogar_proyects/1
  # DELETE /hogar_proyects/1.json
  def destroy
    @hogar_proyect.destroy
    respond_to do |format|
      format.html { redirect_to hogar_proyects_url, notice: 'Hogar proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hogar_proyect
      @hogar_proyect = HogarProyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hogar_proyect_params
      params.require(:hogar_proyect).permit(:name, :description, :large_description)
    end
end

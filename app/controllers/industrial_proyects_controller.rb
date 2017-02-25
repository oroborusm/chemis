class IndustrialProyectsController < ApplicationController
  before_action :set_industrial_proyect, only: [:show, :edit, :update, :destroy]

  # GET /industrial_proyects
  # GET /industrial_proyects.json
  def index
    @industrial_proyects = IndustrialProyect.all
  end

  # GET /industrial_proyects/1
  # GET /industrial_proyects/1.json
  def show
    @iadjunto = Iadjunto.new
  end

  # GET /industrial_proyects/new
  def new
    @industrial_proyect = IndustrialProyect.new
  end

  # GET /industrial_proyects/1/edit
  def edit
  end

  # POST /industrial_proyects
  # POST /industrial_proyects.json
  def create
    @industrial_proyect = IndustrialProyect.new(industrial_proyect_params)

    respond_to do |format|
      if @industrial_proyect.save
        format.html { redirect_to @industrial_proyect, notice: 'Industrial proyect was successfully created.' }
        format.json { render :show, status: :created, location: @industrial_proyect }
      else
        format.html { render :new }
        format.json { render json: @industrial_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industrial_proyects/1
  # PATCH/PUT /industrial_proyects/1.json
  def update
    respond_to do |format|
      if @industrial_proyect.update(industrial_proyect_params)
        format.html { redirect_to @industrial_proyect, notice: 'Industrial proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @industrial_proyect }
      else
        format.html { render :edit }
        format.json { render json: @industrial_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industrial_proyects/1
  # DELETE /industrial_proyects/1.json
  def destroy
    @industrial_proyect.destroy
    respond_to do |format|
      format.html { redirect_to industrial_proyects_url, notice: 'Industrial proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industrial_proyect
      @industrial_proyect = IndustrialProyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industrial_proyect_params
      params.require(:industrial_proyect).permit(:name, :description, :large_description)
    end
end

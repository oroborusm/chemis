class HomeProyectsController < ApplicationController
  before_action :set_home_proyect, only: [:show, :edit, :update, :destroy]

  # GET /home_proyects
  # GET /home_proyects.json
  def index
    @home_proyects = HomeProyect.all
    @contact = Contact.new
  end

  # GET /home_proyects/1
  # GET /home_proyects/1.json
  def show
    @contact = Contact.new
  end

  # GET /home_proyects/new
  def new
    @home_proyect = HomeProyect.new
  end

  # GET /home_proyects/1/edit
  def edit
  end

  # POST /home_proyects
  # POST /home_proyects.json
  def create
    @home_proyect = HomeProyect.new(home_proyect_params)

    respond_to do |format|
      if @home_proyect.save
        format.html { redirect_to @home_proyect, notice: 'Home proyect was successfully created.' }
        format.json { render :show, status: :created, location: @home_proyect }
      else
        format.html { render :new }
        format.json { render json: @home_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_proyects/1
  # PATCH/PUT /home_proyects/1.json
  def update
    respond_to do |format|
      if @home_proyect.update(home_proyect_params)
        format.html { redirect_to @home_proyect, notice: 'Home proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_proyect }
      else
        format.html { render :edit }
        format.json { render json: @home_proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_proyects/1
  # DELETE /home_proyects/1.json
  def destroy
    @home_proyect.destroy
    respond_to do |format|
      format.html { redirect_to home_proyects_url, notice: 'Home proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_proyect
      @home_proyect = HomeProyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_proyect_params
      params.require(:home_proyect).permit(:name, :description, :large_description)
    end
end

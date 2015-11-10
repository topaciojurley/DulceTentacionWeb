class EspecialidadsController < ApplicationController
  before_action :set_especialidad, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_usuario!, except: [:show, ]
  # GET /especialidads
  # GET /especialidads.json
  def index
    @especialidads = Especialidad.all
  end

  # GET /especialidads/1
  # GET /especialidads/1.json
  def show
    @empleados =@especialidad.empleado.all
  end

  # GET /especialidads/new
  def new
    @especialidad = Especialidad.new
  end

  # GET /especialidads/1/edit
  def edit
  end

  # POST /especialidads
  # POST /especialidads.json
  def create
    @especialidad = Especialidad.new(especialidad_params)

    respond_to do |format|
      if @especialidad.save
        format.html { redirect_to @especialidad, notice: 'Especialidad was successfully created.' }
        format.json { render :show, status: :created, location: @especialidad }
      else
        format.html { render :new }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialidads/1
  # PATCH/PUT /especialidads/1.json
  def update
    respond_to do |format|
      if @especialidad.update(especialidad_params)
        format.html { redirect_to @especialidad, notice: 'Especialidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @especialidad }
      else
        format.html { render :edit }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidads/1
  # DELETE /especialidads/1.json
  def destroy
    @especialidad.destroy
    respond_to do |format|
      format.html { redirect_to especialidads_url, notice: 'Especialidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidad
      @especialidad = Especialidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especialidad_params
      params.require(:especialidad).permit(:nombre, :detalle)
    end
end

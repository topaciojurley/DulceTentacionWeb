class EmpleadoEspecialidadsController < ApplicationController
  before_action :set_empleado_especialidad, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_usuario!, except: [:show, ]

  # GET /empleado_especialidads
  # GET /empleado_especialidads.json
  def index
    @empleado_especialidads = EmpleadoEspecialidad.all
  end

  # GET /empleado_especialidads/1
  # GET /empleado_especialidads/1.json
  def show
  end

  # GET /empleado_especialidads/new
  def new
    @empleado_especialidad = EmpleadoEspecialidad.new
  end

  # GET /empleado_especialidads/1/edit
  def edit
  end

  # POST /empleado_especialidads
  # POST /empleado_especialidads.json
  def create
    @empleado_especialidad = EmpleadoEspecialidad.new(empleado_especialidad_params)

    respond_to do |format|
      if @empleado_especialidad.save
        format.html { redirect_to @empleado_especialidad, notice: 'Empleado especialidad was successfully created.' }
        format.json { render :show, status: :created, location: @empleado_especialidad }
      else
        format.html { render :new }
        format.json { render json: @empleado_especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleado_especialidads/1
  # PATCH/PUT /empleado_especialidads/1.json
  def update
    respond_to do |format|
      if @empleado_especialidad.update(empleado_especialidad_params)
        format.html { redirect_to @empleado_especialidad, notice: 'Empleado especialidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @empleado_especialidad }
      else
        format.html { render :edit }
        format.json { render json: @empleado_especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleado_especialidads/1
  # DELETE /empleado_especialidads/1.json
  def destroy
    @empleado_especialidad.destroy
    respond_to do |format|
      format.html { redirect_to empleado_especialidads_url, notice: 'Empleado especialidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado_especialidad
      @empleado_especialidad = EmpleadoEspecialidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empleado_especialidad_params
      params.require(:empleado_especialidad).permit(:empleado_id, :especialidad_id)
    end
end

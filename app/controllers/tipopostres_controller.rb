class TipopostresController < ApplicationController
  before_action :set_tipopostre, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, ]
  # GET /tipopostres
  # GET /tipopostres.json
  def index
    @tipopostres = Tipopostre.all
  end

  # GET /tipopostres/1
  # GET /tipopostres/1.json
  def show
  end

  # GET /tipopostres/new
  def new
    @tipopostre = Tipopostre.new
  end

  # GET /tipopostres/1/edit
  def edit
  end

  # POST /tipopostres
  # POST /tipopostres.json
  def create
    @tipopostre = Tipopostre.new(tipopostre_params)

    respond_to do |format|
      if @tipopostre.save
        format.html { redirect_to @tipopostre, notice: 'Tipopostre was successfully created.' }
        format.json { render :show, status: :created, location: @tipopostre }
      else
        format.html { render :new }
        format.json { render json: @tipopostre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipopostres/1
  # PATCH/PUT /tipopostres/1.json
  def update
    respond_to do |format|
      if @tipopostre.update(tipopostre_params)
        format.html { redirect_to @tipopostre, notice: 'Tipopostre was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipopostre }
      else
        format.html { render :edit }
        format.json { render json: @tipopostre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipopostres/1
  # DELETE /tipopostres/1.json
  def destroy
    @tipopostre.destroy
    respond_to do |format|
      format.html { redirect_to tipopostres_url, notice: 'Tipopostre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipopostre
      @tipopostre = Tipopostre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipopostre_params
      params.require(:tipopostre).permit(:nombre, :descripcion)
    end
end

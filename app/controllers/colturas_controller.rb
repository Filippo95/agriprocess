class ColturasController < ApplicationController
  before_action :set_coltura, only: [:show, :edit, :update, :destroy]

  # GET /colturas
  # GET /colturas.json
  def index
    @colturas = Coltura.all
  end

  # GET /colturas/1
  # GET /colturas/1.json
  def show
  end

  # GET /colturas/new
  def new
    @coltura = Coltura.new
  end

  # GET /colturas/1/edit
  def edit
  end

  # POST /colturas
  # POST /colturas.json
  def create
    @coltura = Coltura.new(coltura_params)

    respond_to do |format|
      if @coltura.save
        format.html { redirect_to @coltura, notice: 'Coltura was successfully created.' }
        format.json { render :show, status: :created, location: @coltura }
      else
        format.html { render :new }
        format.json { render json: @coltura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colturas/1
  # PATCH/PUT /colturas/1.json
  def update
    respond_to do |format|
      if @coltura.update(coltura_params)
        format.html { redirect_to @coltura, notice: 'Coltura was successfully updated.' }
        format.json { render :show, status: :ok, location: @coltura }
      else
        format.html { render :edit }
        format.json { render json: @coltura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colturas/1
  # DELETE /colturas/1.json
  def destroy
    @coltura.destroy
    respond_to do |format|
      format.html { redirect_to colturas_url, notice: 'Coltura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coltura
      @coltura = Coltura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coltura_params
      params.require(:coltura).permit(:nome, :estensione_ha, :id_cat)
    end
end

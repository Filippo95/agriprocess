class PrezzosController < ApplicationController
  before_action :set_prezzo, only: [:show, :edit, :update, :destroy]

  # GET /prezzos
  # GET /prezzos.json
  def index
    @prezzos = Prezzo.all
  end

  # GET /prezzos/1
  # GET /prezzos/1.json
  def show
  end

  # GET /prezzos/new
  def new
    @prezzo = Prezzo.new
  end

  # GET /prezzos/1/edit
  def edit
  end

  # POST /prezzos
  # POST /prezzos.json
  def create
    @prezzo = Prezzo.new(prezzo_params)

    respond_to do |format|
      if @prezzo.save
        format.html { redirect_to @prezzo, notice: 'Prezzo was successfully created.' }
        format.json { render :show, status: :created, location: @prezzo }
      else
        format.html { render :new }
        format.json { render json: @prezzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prezzos/1
  # PATCH/PUT /prezzos/1.json
  def update
    respond_to do |format|
      if @prezzo.update(prezzo_params)
        format.html { redirect_to @prezzo, notice: 'Prezzo was successfully updated.' }
        format.json { render :show, status: :ok, location: @prezzo }
      else
        format.html { render :edit }
        format.json { render json: @prezzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prezzos/1
  # DELETE /prezzos/1.json
  def destroy
    @prezzo.destroy
    respond_to do |format|
      format.html { redirect_to prezzos_url, notice: 'Prezzo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prezzo
      @prezzo = Prezzo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prezzo_params
      params.require(:prezzo).permit(:data, :id_prodotto, :prezzo_fattura, :sconto)
    end
end

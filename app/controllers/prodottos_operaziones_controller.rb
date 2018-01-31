class ProdottosOperazionesController < ApplicationController
  before_action :set_prodottos_operazione, only: [:show, :edit, :update, :destroy]

  # GET /prodottos_operaziones
  # GET /prodottos_operaziones.json
  def index
    @prodottos_operaziones = ProdottosOperazione.all
  end

  # GET /prodottos_operaziones/1
  # GET /prodottos_operaziones/1.json
  def show
  end

  # GET /prodottos_operaziones/new
  def new
    @prodottos_operazione = ProdottosOperazione.new
  end

  # GET /prodottos_operaziones/1/edit
  def edit
  end

  # POST /prodottos_operaziones
  # POST /prodottos_operaziones.json
  def create
    @prodottos_operazione = ProdottosOperazione.new(prodottos_operazione_params)

    respond_to do |format|
      if @prodottos_operazione.save
        format.html { redirect_to  controller: 'prodottos', action: 'show', id: @prodottos_operazione.id_prodotto }
        format.json { render :show, status: :created, location: @prodottos_operazione }
      else
        format.html { render :new }
        format.json { render json: @prodottos_operazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodottos_operaziones/1
  # PATCH/PUT /prodottos_operaziones/1.json
  def update
    respond_to do |format|
      if @prodottos_operazione.update(prodottos_operazione_params)
        format.html { redirect_to @prodottos_operazione, notice: 'Prodottos operazione was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodottos_operazione }
      else
        format.html { render :edit }
        format.json { render json: @prodottos_operazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodottos_operaziones/1
  # DELETE /prodottos_operaziones/1.json
  def destroy
    @prodottos_operazione.destroy
    respond_to do |format|
      format.html { redirect_to  controller: 'prodottos', action: 'show', id: @prodottos_operazione.id_prodotto }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodottos_operazione
      @prodottos_operazione = ProdottosOperazione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodottos_operazione_params
      params.require(:prodottos_operazione).permit(:id_prodotto, :id_operaziones)
    end
end

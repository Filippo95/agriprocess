class ProdottoTrattamentosController < ApplicationController
  before_action :set_prodotto_trattamento, only: [:show, :edit, :update, :destroy]
skip_before_action :verify_authenticity_token
  # GET /prodotto_trattamentos
  # GET /prodotto_trattamentos.json
  def index
    @prodotto_trattamentos = ProdottoTrattamento.all
  end

  # GET /prodotto_trattamentos/1
  # GET /prodotto_trattamentos/1.json
  def show
  end

  # GET /prodotto_trattamentos/new
  def new
    @prodotto_trattamento = ProdottoTrattamento.new
  end

  # GET /prodotto_trattamentos/1/edit
  def edit
  end

  # POST /prodotto_trattamentos
  # POST /prodotto_trattamentos.json
  def create
    @prodotto_trattamento = ProdottoTrattamento.new(prodotto_trattamento_params)

    respond_to do |format|
      if @prodotto_trattamento.save
        format.html { redirect_to  controller: 'trattamentos', action: 'show', id: @prodotto_trattamento.id_trattamento  }
        format.json { render :show, status: :created, location: @prodotto_trattamento }
      else
        format.html { render :new }
        format.json { render json: @prodotto_trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodotto_trattamentos/1
  # PATCH/PUT /prodotto_trattamentos/1.json
  def update
    respond_to do |format|
      if @prodotto_trattamento.update(prodotto_trattamento_params)
        format.html { redirect_to @prodotto_trattamento, notice: 'Prodotto trattamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodotto_trattamento }
      else
        format.html { render :edit }
        format.json { render json: @prodotto_trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodotto_trattamentos/1
  # DELETE /prodotto_trattamentos/1.json
  def destroy
    @prodotto_trattamento.destroy
    respond_to do |format|
      format.html { redirect_to  controller: 'trattamentos', action: 'show', id: @prodotto_trattamento.id_trattamento }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodotto_trattamento
      @prodotto_trattamento = ProdottoTrattamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodotto_trattamento_params
      params.require(:prodotto_trattamento).permit(:id_prodotto, :id_trattamento, :dose_ha, :avvesit)
    end
end

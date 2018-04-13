class ProdottosController < ApplicationController
  before_action :set_prodotto, only: [:show, :edit, :update, :destroy]

  # GET /prodottos
  # GET /prodottos.json
  def index
    @prodottos = Prodotto.all
  end

  # GET /prodottos/1
  # GET /prodottos/1.json
  def show
  end

  # GET /prodottos/new
  def new
    @prodotto = Prodotto.new
  end

  # GET /prodottos/1/edit
  def edit
  end

  # POST /prodottos
  # POST /prodottos.json
  def create
    @prodotto = Prodotto.new(prodotto_params)

    respond_to do |format|
      if @prodotto.save
        format.html { redirect_to @prodotto, notice: 'Prodotto was successfully created.' }
        format.json { render :show, status: :created, location: @prodotto }
      else
        format.html { render :new }
        format.json { render json: @prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodottos/1
  # PATCH/PUT /prodottos/1.json
  def update
    respond_to do |format|
      if @prodotto.update(prodotto_params)
        format.html { redirect_to @prodotto, notice: 'Prodotto was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodotto }
      else
        format.html { render :edit }
        format.json { render json: @prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodottos/1
  # DELETE /prodottos/1.json
  def destroy
    @prodotto.destroy
    respond_to do |format|
      format.html { redirect_to prodottos_url, notice: 'Prodotto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodotto
      @prodotto = Prodotto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodotto_params
      params.require(:prodotto).permit(:nome, :avversit, :id_cat, :principio_attivo)
    end
end

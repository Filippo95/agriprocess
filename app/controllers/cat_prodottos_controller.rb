class CatProdottosController < ApplicationController
  before_action :set_cat_prodotto, only: [:show, :edit, :update, :destroy]

  # GET /cat_prodottos
  # GET /cat_prodottos.json
  def index
    @cat_prodottos = CatProdotto.all
  end

  # GET /cat_prodottos/1
  # GET /cat_prodottos/1.json
  def show
  end

  # GET /cat_prodottos/new
  def new
    @cat_prodotto = CatProdotto.new
  end

  # GET /cat_prodottos/1/edit
  def edit
  end

  # POST /cat_prodottos
  # POST /cat_prodottos.json
  def create
    @cat_prodotto = CatProdotto.new(cat_prodotto_params)

    respond_to do |format|
      if @cat_prodotto.save
        format.html { redirect_to @cat_prodotto, notice: 'Cat prodotto was successfully created.' }
        format.json { render :show, status: :created, location: @cat_prodotto }
      else
        format.html { render :new }
        format.json { render json: @cat_prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_prodottos/1
  # PATCH/PUT /cat_prodottos/1.json
  def update
    respond_to do |format|
      if @cat_prodotto.update(cat_prodotto_params)
        format.html { redirect_to @cat_prodotto, notice: 'Cat prodotto was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_prodotto }
      else
        format.html { render :edit }
        format.json { render json: @cat_prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_prodottos/1
  # DELETE /cat_prodottos/1.json
  def destroy
    @cat_prodotto.destroy
    respond_to do |format|
      format.html { redirect_to cat_prodottos_url, notice: 'Cat prodotto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_prodotto
      @cat_prodotto = CatProdotto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_prodotto_params
      params.require(:cat_prodotto).permit(:nome, :descrizione, :id_prarent)
    end
end

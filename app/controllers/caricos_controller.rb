class CaricosController < ApplicationController
  before_action :set_carico, only: [:show, :edit, :update, :destroy]

  # GET /caricos
  # GET /caricos.json
  def index
    @caricos = Carico.all
  end

  # GET /caricos/1
  # GET /caricos/1.json
  def show
  end

  # GET /caricos/new
  def new
    @carico = Carico.new
  end

  # GET /caricos/1/edit
  def edit
  end

  # POST /caricos
  # POST /caricos.json
  def create
    @carico = Carico.new(carico_params)

    respond_to do |format|
      if @carico.save
        format.html { redirect_to @carico, notice: 'Carico was successfully created.' }
        format.json { render :show, status: :created, location: @carico }
      else
        format.html { render :new }
        format.json { render json: @carico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caricos/1
  # PATCH/PUT /caricos/1.json
  def update
    respond_to do |format|
      if @carico.update(carico_params)
        format.html { redirect_to @carico, notice: 'Carico was successfully updated.' }
        format.json { render :show, status: :ok, location: @carico }
      else
        format.html { render :edit }
        format.json { render json: @carico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caricos/1
  # DELETE /caricos/1.json
  def destroy
    @carico.destroy
    respond_to do |format|
      format.html { redirect_to caricos_url, notice: 'Carico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carico
      @carico = Carico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carico_params
      params.require(:carico).permit(:id_prodotto, :quantit)
    end
end

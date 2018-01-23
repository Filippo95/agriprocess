class AttrezzosController < ApplicationController
  before_action :set_attrezzo, only: [:show, :edit, :update, :destroy]

  # GET /attrezzos
  # GET /attrezzos.json
  def index
    @attrezzos = Attrezzo.all
  end

  # GET /attrezzos/1
  # GET /attrezzos/1.json
  def show
  end

  # GET /attrezzos/new
  def new
    @attrezzo = Attrezzo.new
  end

  # GET /attrezzos/1/edit
  def edit
  end

  # POST /attrezzos
  # POST /attrezzos.json
  def create
    @attrezzo = Attrezzo.new(attrezzo_params)

    respond_to do |format|
      if @attrezzo.save
        format.html { redirect_to @attrezzo, notice: 'Attrezzo was successfully created.' }
        format.json { render :show, status: :created, location: @attrezzo }
      else
        format.html { render :new }
        format.json { render json: @attrezzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attrezzos/1
  # PATCH/PUT /attrezzos/1.json
  def update
    respond_to do |format|
      if @attrezzo.update(attrezzo_params)
        format.html { redirect_to @attrezzo, notice: 'Attrezzo was successfully updated.' }
        format.json { render :show, status: :ok, location: @attrezzo }
      else
        format.html { render :edit }
        format.json { render json: @attrezzo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attrezzos/1
  # DELETE /attrezzos/1.json
  def destroy
    @attrezzo.destroy
    respond_to do |format|
      format.html { redirect_to attrezzos_url, notice: 'Attrezzo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attrezzo
      @attrezzo = Attrezzo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attrezzo_params
      params.require(:attrezzo).permit(:nome, :descrizione, :costo_carburante, :deperimento)
    end
end

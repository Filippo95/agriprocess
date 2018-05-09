class OperazionesCatColturesController < ApplicationController
  before_action :set_operaziones_cat_colture, only: [:show, :edit, :update, :destroy]
skip_before_action :verify_authenticity_token
  # GET /operaziones_cat_coltures
  # GET /operaziones_cat_coltures.json
  def index
    @operaziones_cat_coltures = OperazionesCatColture.all
  end

  # GET /operaziones_cat_coltures/1
  # GET /operaziones_cat_coltures/1.json
  def show
  end

  # GET /operaziones_cat_coltures/new
  def new
    @operaziones_cat_colture = OperazionesCatColture.new
  end

  # GET /operaziones_cat_coltures/1/edit
  def edit
  end

  # POST /operaziones_cat_coltures
  # POST /operaziones_cat_coltures.json
  def create
    @operaziones_cat_colture = OperazionesCatColture.new(operaziones_cat_colture_params)

    respond_to do |format|
      if @operaziones_cat_colture.save
        format.html  { redirect_to  controller: 'operaziones', action: 'show', id: @operaziones_cat_colture.id_operazione  }
        format.json { render :show, status: :created, location: @operaziones_cat_colture }
      else
        format.html { render :new }
        format.json { render json: @operaziones_cat_colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaziones_cat_coltures/1
  # PATCH/PUT /operaziones_cat_coltures/1.json
  def update
    respond_to do |format|
      if @operaziones_cat_colture.update(operaziones_cat_colture_params)
        format.html { redirect_to @operaziones_cat_colture, notice: 'Operaziones cat colture was successfully updated.' }
        format.json { render :show, status: :ok, location: @operaziones_cat_colture }
      else
        format.html { render :edit }
        format.json { render json: @operaziones_cat_colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaziones_cat_coltures/1
  # DELETE /operaziones_cat_coltures/1.json
  def destroy
    @operaziones_cat_colture.destroy
    respond_to do |format|
      format.html  { redirect_to  controller: 'operaziones', action: 'show', id: @operaziones_cat_colture.id_operazione  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operaziones_cat_colture
      @operaziones_cat_colture = OperazionesCatColture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operaziones_cat_colture_params
      params.require(:operaziones_cat_colture).permit(:id_operazione, :id_cat_coltures)
    end
end

class CatColturesController < ApplicationController
  before_action :set_cat_colture, only: [:show, :edit, :update, :destroy]

  # GET /cat_coltures
  # GET /cat_coltures.json
  def index
    @cat_coltures = CatColture.all
  end

  # GET /cat_coltures/1
  # GET /cat_coltures/1.json
  def show
  end

  # GET /cat_coltures/new
  def new
    @cat_colture = CatColture.new
  end

  # GET /cat_coltures/1/edit
  def edit
  end

  # POST /cat_coltures
  # POST /cat_coltures.json
  def create
    @cat_colture = CatColture.new(cat_colture_params)

    respond_to do |format|
      if @cat_colture.save
        format.html { redirect_to @cat_colture, notice: 'Cat colture was successfully created.' }
        format.json { render :show, status: :created, location: @cat_colture }
      else
        format.html { render :new }
        format.json { render json: @cat_colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_coltures/1
  # PATCH/PUT /cat_coltures/1.json
  def update
    respond_to do |format|
      if @cat_colture.update(cat_colture_params)
        format.html { redirect_to @cat_colture, notice: 'Cat colture was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_colture }
      else
        format.html { render :edit }
        format.json { render json: @cat_colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_coltures/1
  # DELETE /cat_coltures/1.json
  def destroy
    @cat_colture.destroy
    respond_to do |format|
      format.html { redirect_to cat_coltures_url, notice: 'Cat colture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_colture
      @cat_colture = CatColture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_colture_params
      params.require(:cat_colture).permit(:nome, :descrizione, :id_parent)
    end
end

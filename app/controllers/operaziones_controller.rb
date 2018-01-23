class OperazionesController < ApplicationController
  before_action :set_operazione, only: [:show, :edit, :update, :destroy]

  # GET /operaziones
  # GET /operaziones.json
  def index
    @operaziones = Operazione.all
  end

  # GET /operaziones/1
  # GET /operaziones/1.json
  def show
  end

  # GET /operaziones/new
  def new
    @operazione = Operazione.new
  end

  # GET /operaziones/1/edit
  def edit
  end

  # POST /operaziones
  # POST /operaziones.json
  def create
    @operazione = Operazione.new(operazione_params)

    respond_to do |format|
      if @operazione.save
        format.html { redirect_to @operazione, notice: 'Operazione was successfully created.' }
        format.json { render :show, status: :created, location: @operazione }
      else
        format.html { render :new }
        format.json { render json: @operazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaziones/1
  # PATCH/PUT /operaziones/1.json
  def update
    respond_to do |format|
      if @operazione.update(operazione_params)
        format.html { redirect_to @operazione, notice: 'Operazione was successfully updated.' }
        format.json { render :show, status: :ok, location: @operazione }
      else
        format.html { render :edit }
        format.json { render json: @operazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaziones/1
  # DELETE /operaziones/1.json
  def destroy
    @operazione.destroy
    respond_to do |format|
      format.html { redirect_to operaziones_url, notice: 'Operazione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operazione
      @operazione = Operazione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operazione_params
      params.require(:operazione).permit(:nome, :descrizione, :per_ha)
    end
end

class OperazioneTrattamentosController < ApplicationController
  before_action :set_operazione_trattamento, only: [:show, :edit, :update, :destroy]
skip_before_action :verify_authenticity_token
  # GET /operazione_trattamentos
  # GET /operazione_trattamentos.json
  def index
    @operazione_trattamentos = OperazioneTrattamento.all
  end

  # GET /operazione_trattamentos/1
  # GET /operazione_trattamentos/1.json
  def show
  end

  # GET /operazione_trattamentos/new
  def new
    @operazione_trattamento = OperazioneTrattamento.new
  end

  # GET /operazione_trattamentos/1/edit
  def edit
  end

  # POST /operazione_trattamentos
  # POST /operazione_trattamentos.json
  def create
    @operazione_trattamento = OperazioneTrattamento.new(operazione_trattamento_params)

    respond_to do |format|
      if @operazione_trattamento.save
        format.html { redirect_to  controller: 'trattamentos', action: 'show', id: @operazione_trattamento.id_trattamento }
        format.json { render :show, status: :created, location: @operazione_trattamento }
      else
        format.html { render :new }
        format.json { render json: @operazione_trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operazione_trattamentos/1
  # PATCH/PUT /operazione_trattamentos/1.json
  def update
    respond_to do |format|
      if @operazione_trattamento.update(operazione_trattamento_params)
        format.html { redirect_to @operazione_trattamento, notice: 'Operazione trattamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @operazione_trattamento }
      else
        format.html { render :edit }
        format.json { render json: @operazione_trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operazione_trattamentos/1
  # DELETE /operazione_trattamentos/1.json
  def destroy
    @operazione_trattamento.destroy
    respond_to do |format|
      format.html { redirect_to  controller: 'trattamentos', action: 'show', id: @operazione_trattamento.id_trattamento }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operazione_trattamento
      @operazione_trattamento = OperazioneTrattamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operazione_trattamento_params
      params.require(:operazione_trattamento).permit(:id_operazione, :id_trattamento)
    end
end

class TrattamentosController < ApplicationController
  before_action :set_trattamento, only: [:show, :edit, :update, :destroy]

  # GET /trattamentos
  # GET /trattamentos.json
  def index
    @trattamentos = Trattamento.all


    @colturas=Coltura.where("id<?",100000000)
    @prodotto_trattamentos=ProdottoTrattamento.where("id<?",100000000)
    @prodottos=Prodotto.where("id<?",1000000000)

      require 'net/http'

    url = URI.parse('http://vps505525.ovh.net:44400/trattamenti_webservices/export_qdc.php')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    @export=res.body
      respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Your_filename",
        template: "trattamentos/pdf.html.erb",
        layout: 'pdf.html.erb'
      end
   end
  end

  # GET /trattamentos/1
  # GET /trattamentos/1.json
  def show
  
  end

  # GET /trattamentos/new
  def new
    @trattamento = Trattamento.new
    @colture=Coltura.where("id<?",1000000000000)
    @attrezzi=Attrezzo.where("id<?",1000000000000)
  end

  # GET /trattamentos/1/edit
  def edit
    
    @colture=Coltura.where("id<?",1000000000000)
    @attrezzi=Attrezzo.where("id<?",1000000000000)
  end

  # POST /trattamentos
  # POST /trattamentos.json
  def create
    @trattamento = Trattamento.new(trattamento_params)

    respond_to do |format|
      if @trattamento.save
        format.html { redirect_to @trattamento, notice: 'Trattamento was successfully created.' }
        format.json { render :show, status: :created, location: @trattamento }
      else
        format.html { render :new }
        format.json { render json: @trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trattamentos/1
  # PATCH/PUT /trattamentos/1.json
  def update
    respond_to do |format|
      if @trattamento.update(trattamento_params)
        format.html { redirect_to @trattamento, notice: 'Trattamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @trattamento }
      else
        format.html { render :edit }
        format.json { render json: @trattamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trattamentos/1
  # DELETE /trattamentos/1.json
  def destroy
    @trattamento.destroy
    respond_to do |format|
      format.html { redirect_to trattamentos_url, notice: 'Trattamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trattamento
      @trattamento = Trattamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trattamento_params
      params.require(:trattamento).permit(:data, :id_coltura, :id_attrezzo, :avversit, :semina, :trapianto, :fioritura, :raccolta)
    end
end

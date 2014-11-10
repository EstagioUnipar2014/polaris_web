class PesagensController < ApplicationController
  before_action :set_pesagem, only: [:show, :edit, :update, :destroy]

  # GET /pesagens
  # GET /pesagens.json
  def index
    if params[:animal_id]
      @pesagens = Pesagem.includes(:animal).animal(params[:animal_id])
    else
      @pesagens = Pesagem.includes(:animal).propriedade(current_usuario)
    end
    
    respond_to do |format|
      format.html
      format.pdf {render pdf: "animais"} 
    end 
  end

  # GET /pesagens/1
  # GET /pesagens/1.json
  def show
  end

  # GET /pesagens/new
  def new
    @pesagem = Pesagem.new
  end

  # GET /pesagens/1/edit
  def edit
  end

  # POST /pesagens
  # POST /pesagens.json
  def create
    @pesagem = Pesagem.new(pesagem_params)

    respond_to do |format|
      if @pesagem.save
        format.html { redirect_to @pesagem, notice: 'Pesagem cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @pesagem }
        format.js   {head :ok}
      else
        format.html { render :new }
        format.json { render json: @pesagem.errors.full_message, status: :unprocessable_entity }
        format.js{}
      end
    end
  end

  # PATCH/PUT /pesagens/1
  # PATCH/PUT /pesagens/1.json
  def update
    respond_to do |format|
      if @pesagem.update(pesagem_params)
        format.html { redirect_to @pesagem, notice: 'Pesagem editada com sucesso.' }
        format.json { render :show, status: :ok, location: @pesagem }
      else
        format.html { render :edit }
        format.json { render json: @pesagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesagens/1
  # DELETE /pesagens/1.json
  def destroy
    @pesagem.destroy
    respond_to do |format|
      format.html { redirect_to pesagens_url, notice: 'Pesagem excluida.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesagem
      @pesagem = Pesagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pesagem_params
      params.require(:pesagem).permit(:peso, :data_pesagem, :animal_id)
    end
end

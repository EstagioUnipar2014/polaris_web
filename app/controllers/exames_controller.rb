class ExamesController < ApplicationController
  before_action :set_exame, only: [:show, :edit, :update, :destroy]
  
  has_scope :vencidos, :type => :boolean
  has_scope :pendentes, :type => :boolean
  has_scope :do_dia, :type => :boolean

  # GET /exames
  # GET /exames.json
  def index
    if params[:animal_id]
      @exames = apply_scopes(Exame).includes(:animal ,:tipo_exame).animal(params[:animal_id])
    else
      @exames = apply_scopes(Exame).includes(:animal ,:tipo_exame).propriedade(current_usuario)
    end
    
    respond_to do |format|
      format.html
      format.pdf {render pdf: "exames"} 
    end 
  end

  # GET /exames/1
  # GET /exames/1.json
  def show
  end

  # GET /exames/new
  def new
    @exame = Exame.new
  end

  # GET /exames/1/edit
  def edit
  end

  # POST /exames
  # POST /exames.json
  def create
    @exame = Exame.new(exame_params)

    respond_to do |format|
      if @exame.save
        format.html { redirect_to @exame, notice: 'Exame cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @exame }
        format.js   { head :ok }
      else
        format.html { render :new }
        format.json { render json: @exame.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # PATCH/PUT /exames/1
  # PATCH/PUT /exames/1.json
  def update
    respond_to do |format|
      if @exame.update(exame_params)
        format.html { redirect_to @exame, notice: 'Exame editado com sucesso.' }
        format.json { render :show, status: :ok, location: @exame }
      else
        format.html { render :edit }
        format.json { render json: @exame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exames/1
  # DELETE /exames/1.json
  def destroy
    @exame.destroy
    respond_to do |format|
      format.html { redirect_to exames_url, notice: 'Exame excluidos.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exame
      @exame = Exame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exame_params
      params.require(:exame).permit(:data, :descricao, :efetuado, :resultado, :informacoes, :animal_id, :tipo_exame_id, doenca_ids: [])
    end
end

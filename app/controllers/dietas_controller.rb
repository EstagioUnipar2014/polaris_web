class DietasController < ApplicationController
  before_action :set_dieta, only: [:show, :edit, :update, :destroy]

  # GET /dietas
  # GET /dietas.json
  def index
    @dietas = Dieta.propriedade(current_usuario)
    
    respond_to do |format|
      format.html
      format.pdf {render pdf: "Dietas"}
    end
  end

  # GET /dietas/1
  # GET /dietas/1.json
  def show
  end

  # GET /dietas/new
  def new
    @dieta = Dieta.new
    @dieta.ciclos.build
  end

  # GET /dietas/1/edit
  def edit
  end

  # POST /dietas
  # POST /dietas.json
  def create
    @dieta = Dieta.new(dieta_params)

    respond_to do |format|
      if @dieta.save
        format.html { redirect_to @dieta, notice: 'Dieta cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @dieta }
      else
        format.html { render :new }
        format.json { render json: @dieta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dietas/1
  # PATCH/PUT /dietas/1.json
  def update
    respond_to do |format|
      if @dieta.update(dieta_params)
        format.html { redirect_to @dieta, notice: 'Dieta editada com sucesso.' }
        format.json { render :show, status: :ok, location: @dieta }
      else
        format.html { render :edit }
        format.json { render json: @dieta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dietas/1
  # DELETE /dietas/1.json
  def destroy
    @dieta.destroy
    respond_to do |format|
      format.html { redirect_to dietas_url, notice: 'Dieta excluida.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dieta
      @dieta = Dieta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dieta_params
      params.require(:dieta).permit(:descricao, :propriedade_id, :ciclos_attributes => [:id, :descricao, :_destroy,
				 :medidas_attributes => [:id, :alimento_id, :unidade_id, :quantidade, :ciclo_id, :_destroy]])
    end
end

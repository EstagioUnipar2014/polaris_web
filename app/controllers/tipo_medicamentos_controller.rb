class TipoMedicamentosController < ApplicationController
  before_action :set_tipo_medicamento, only: [:show, :edit, :update, :destroy]

  # GET /tipo_medicamentos
  # GET /tipo_medicamentos.json
  def index
    @tipo_medicamentos = TipoMedicamento.all
  end

  # GET /tipo_medicamentos/1
  # GET /tipo_medicamentos/1.json
  def show
  end

  # GET /tipo_medicamentos/new
  def new
    @tipo_medicamento = TipoMedicamento.new
  end

  # GET /tipo_medicamentos/1/edit
  def edit
  end

  # POST /tipo_medicamentos
  # POST /tipo_medicamentos.json
  def create
    @tipo_medicamento = TipoMedicamento.new(tipo_medicamento_params)

    respond_to do |format|
      if @tipo_medicamento.save
        format.html { redirect_to @tipo_medicamento, notice: 'Tipo medicamento was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_medicamento }
      else
        format.html { render :new }
        format.json { render json: @tipo_medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_medicamentos/1
  # PATCH/PUT /tipo_medicamentos/1.json
  def update
    respond_to do |format|
      if @tipo_medicamento.update(tipo_medicamento_params)
        format.html { redirect_to @tipo_medicamento, notice: 'Tipo medicamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_medicamento }
      else
        format.html { render :edit }
        format.json { render json: @tipo_medicamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_medicamentos/1
  # DELETE /tipo_medicamentos/1.json
  def destroy
    @tipo_medicamento.destroy
    respond_to do |format|
      format.html { redirect_to tipo_medicamentos_url, notice: 'Tipo medicamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_medicamento
      @tipo_medicamento = TipoMedicamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_medicamento_params
      params.require(:tipo_medicamento).permit(:descricao)
    end
end

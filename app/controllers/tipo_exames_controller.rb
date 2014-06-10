class TipoExamesController < ApplicationController
  before_action :set_tipo_exame, only: [:show, :edit, :update, :destroy]

  # GET /tipo_exames
  # GET /tipo_exames.json
  def index
    @tipo_exames = TipoExame.all
  end

  # GET /tipo_exames/1
  # GET /tipo_exames/1.json
  def show
  end

  # GET /tipo_exames/new
  def new
    @tipo_exame = TipoExame.new
  end

  # GET /tipo_exames/1/edit
  def edit
  end

  # POST /tipo_exames
  # POST /tipo_exames.json
  def create
    @tipo_exame = TipoExame.new(tipo_exame_params)

    respond_to do |format|
      if @tipo_exame.save
        format.html { redirect_to @tipo_exame, notice: 'Tipo exame was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_exame }
      else
        format.html { render :new }
        format.json { render json: @tipo_exame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_exames/1
  # PATCH/PUT /tipo_exames/1.json
  def update
    respond_to do |format|
      if @tipo_exame.update(tipo_exame_params)
        format.html { redirect_to @tipo_exame, notice: 'Tipo exame was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_exame }
      else
        format.html { render :edit }
        format.json { render json: @tipo_exame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_exames/1
  # DELETE /tipo_exames/1.json
  def destroy
    @tipo_exame.destroy
    respond_to do |format|
      format.html { redirect_to tipo_exames_url, notice: 'Tipo exame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_exame
      @tipo_exame = TipoExame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_exame_params
      params.require(:tipo_exame).permit(:descricao)
    end
end

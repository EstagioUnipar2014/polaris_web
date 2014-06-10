class DoencasController < ApplicationController
  before_action :set_doenca, only: [:show, :edit, :update, :destroy]

  # GET /doencas
  # GET /doencas.json
  def index
    @doencas = Doenca.all
  end

  # GET /doencas/1
  # GET /doencas/1.json
  def show
  end

  # GET /doencas/new
  def new
    @doenca = Doenca.new
  end

  # GET /doencas/1/edit
  def edit
  end

  # POST /doencas
  # POST /doencas.json
  def create
    @doenca = Doenca.new(doenca_params)

    respond_to do |format|
      if @doenca.save
        format.html { redirect_to @doenca, notice: 'Doenca was successfully created.' }
        format.json { render :show, status: :created, location: @doenca }
      else
        format.html { render :new }
        format.json { render json: @doenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doencas/1
  # PATCH/PUT /doencas/1.json
  def update
    respond_to do |format|
      if @doenca.update(doenca_params)
        format.html { redirect_to @doenca, notice: 'Doenca was successfully updated.' }
        format.json { render :show, status: :ok, location: @doenca }
      else
        format.html { render :edit }
        format.json { render json: @doenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doencas/1
  # DELETE /doencas/1.json
  def destroy
    @doenca.destroy
    respond_to do |format|
      format.html { redirect_to doencas_url, notice: 'Doenca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doenca
      @doenca = Doenca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doenca_params
      params.require(:doenca).permit(:nome, :descricao)
    end
end

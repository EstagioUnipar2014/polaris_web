class CiosController < ApplicationController
  before_action :set_cio, only: [:show, :edit, :update, :destroy]

  # GET /cios
  # GET /cios.json
  def index
    @cios = Cio.propriedade(current_usuario)
    
    respond_to do |format|
      format.html
      format.pdf {render pdf: "Cios"} 
    end 
  end

  # GET /cios/1
  # GET /cios/1.json
  def show
  end

  # GET /cios/new
  def new
    @cio = Cio.new
    @cio.build_cobertura
  end

  # GET /cios/1/edit
  def edit
  end

  # POST /cios
  # POST /cios.json
  def create
    @cio = Cio.new(cio_params)

    respond_to do |format|
      if @cio.save
        format.html { redirect_to @cio, notice: 'Cio cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @cio }
      else
        format.html { render :new }
        format.json { render json: @cio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cios/1
  # PATCH/PUT /cios/1.json
  def update
    respond_to do |format|
      if @cio.update(cio_params)
        format.html { redirect_to @cio, notice: 'Cio editado com sucesso.' }
        format.json { render :show, status: :ok, location: @cio }
      else
        format.html { render :edit }
        format.json { render json: @cio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cios/1
  # DELETE /cios/1.json
  def destroy
    @cio.destroy
    respond_to do |format|
      format.html { redirect_to cios_url, notice: 'Cio excluido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cio
      @cio = Cio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cio_params
      params.require(:cio).permit(:data_cio, :animal_id, cobertura_attributes: [:animal_id])
    end
end

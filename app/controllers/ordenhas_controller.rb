class OrdenhasController < ApplicationController
  before_action :set_ordenha, only: [:show, :edit, :update, :destroy]

  # GET /ordenhas
  # GET /ordenhas.json
  def index
    @ordenhas = Ordenha.all
  end

  # GET /ordenhas/1
  # GET /ordenhas/1.json
  def show
  end

  # GET /ordenhas/new
  def new
    @ordenha = Ordenha.new
  end

  # GET /ordenhas/1/edit
  def edit
  end

  # POST /ordenhas
  # POST /ordenhas.json
  def create
    @ordenha = Ordenha.new(ordenha_params)

    respond_to do |format|
      if @ordenha.save
        format.html { redirect_to @ordenha, notice: 'Ordenha was successfully created.' }
        format.json { render :show, status: :created, location: @ordenha }
      else
        format.html { render :new }
        format.json { render json: @ordenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenhas/1
  # PATCH/PUT /ordenhas/1.json
  def update
    respond_to do |format|
      if @ordenha.update(ordenha_params)
        format.html { redirect_to @ordenha, notice: 'Ordenha was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenha }
      else
        format.html { render :edit }
        format.json { render json: @ordenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenhas/1
  # DELETE /ordenhas/1.json
  def destroy
    @ordenha.destroy
    respond_to do |format|
      format.html { redirect_to ordenhas_url, notice: 'Ordenha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenha
      @ordenha = Ordenha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenha_params
      params.require(:ordenha).permit(:data, :periodo, :quantidade, :animal_id)
    end
end

class DietaController < ApplicationController
  before_action :set_dietum, only: [:show, :edit, :update, :destroy]

  # GET /dieta
  # GET /dieta.json
  def index
    @dieta = Dietum.all
  end

  # GET /dieta/1
  # GET /dieta/1.json
  def show
  end

  # GET /dieta/new
  def new
    @dietum = Dietum.new
  end

  # GET /dieta/1/edit
  def edit
  end

  # POST /dieta
  # POST /dieta.json
  def create
    @dietum = Dietum.new(dietum_params)

    respond_to do |format|
      if @dietum.save
        format.html { redirect_to @dietum, notice: 'Dietum was successfully created.' }
        format.json { render :show, status: :created, location: @dietum }
      else
        format.html { render :new }
        format.json { render json: @dietum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dieta/1
  # PATCH/PUT /dieta/1.json
  def update
    respond_to do |format|
      if @dietum.update(dietum_params)
        format.html { redirect_to @dietum, notice: 'Dietum was successfully updated.' }
        format.json { render :show, status: :ok, location: @dietum }
      else
        format.html { render :edit }
        format.json { render json: @dietum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dieta/1
  # DELETE /dieta/1.json
  def destroy
    @dietum.destroy
    respond_to do |format|
      format.html { redirect_to dieta_url, notice: 'Dietum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dietum
      @dietum = Dietum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dietum_params
      params.require(:dietum).permit(:descricao)
    end
end

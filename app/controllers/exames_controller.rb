class ExamesController < ApplicationController
  before_action :set_exame, only: [:show, :edit, :update, :destroy]

  # GET /exames
  # GET /exames.json
  def index
    if params[:animal_id]
      @exames = Exame.animal(params[:animal_id])
    else
      @exames = Exame.propriedade(current_usuario)
    end
    
    respond_to do |format|
      format.html
      format.pdf {render pdf: "exames",
                    :header => {:html => { :template => 'layouts/_header.pdf.erb'}},
                      :margin => {:top => 30, :bottom => 20, :left => 30, :right => 20}
                  } 
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
        format.html { redirect_to @exame, notice: 'Exame was successfully created.' }
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
        format.html { redirect_to @exame, notice: 'Exame was successfully updated.' }
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
      format.html { redirect_to exames_url, notice: 'Exame was successfully destroyed.' }
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

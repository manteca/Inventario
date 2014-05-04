class UmedidasController < ApplicationController
  before_action :set_umedida, only: [:show, :edit, :update, :destroy]

  # GET /umedidas
  # GET /umedidas.json
  def index
    @umedidas = Umedida.all
  end

  # GET /umedidas/1
  # GET /umedidas/1.json
  def show
  end

  # GET /umedidas/new
  def new
    @umedida = Umedida.new
  end

  # GET /umedidas/1/edit
  def edit
  end

  # POST /umedidas
  # POST /umedidas.json
  def create
    @umedida = Umedida.new(umedida_params)

    respond_to do |format|
      if @umedida.save
        format.html { redirect_to @umedida, notice: 'Umedida was successfully created.' }
        format.json { render action: 'show', status: :created, location: @umedida }
      else
        format.html { render action: 'new' }
        format.json { render json: @umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /umedidas/1
  # PATCH/PUT /umedidas/1.json
  def update
    respond_to do |format|
      if @umedida.update(umedida_params)
        format.html { redirect_to @umedida, notice: 'Umedida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /umedidas/1
  # DELETE /umedidas/1.json
  def destroy
    @umedida.destroy
    respond_to do |format|
      format.html { redirect_to umedidas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_umedida
      @umedida = Umedida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def umedida_params
      params.require(:umedida).permit(:nombre)
    end
end

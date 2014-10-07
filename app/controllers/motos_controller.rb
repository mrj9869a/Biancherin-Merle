class MotosController < ApplicationController
  before_action :set_moto, only: [:show, :edit, :update, :destroy]

  # GET /motos
  # GET /motos.json
  def index
    @motos = Moto.all
  end

  # GET /motos/1
  # GET /motos/1.json
  def show
  end

  # GET /motos/new
  def new
    @moto = Moto.new
  end

  # GET /motos/1/edit
  def edit
  end

  # POST /motos
  # POST /motos.json
  def create
    @moto = Moto.new(moto_params)

    respond_to do |format|
      if @moto.save
        format.html { redirect_to @moto, notice: 'Moto was successfully created.' }
        format.json { render :show, status: :created, location: @moto }
      else
        format.html { render :new }
        format.json { render json: @moto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motos/1
  # PATCH/PUT /motos/1.json
  def update
    respond_to do |format|
      if @moto.update(moto_params)
        format.html { redirect_to @moto, notice: 'Moto was successfully updated.' }
        format.json { render :show, status: :ok, location: @moto }
      else
        format.html { render :edit }
        format.json { render json: @moto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motos/1
  # DELETE /motos/1.json
  def destroy
    @moto.destroy
    respond_to do |format|
      format.html { redirect_to motos_url, notice: 'Moto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moto
      @moto = Moto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moto_params
      params.require(:moto).permit(:marque, :description)
    end
end

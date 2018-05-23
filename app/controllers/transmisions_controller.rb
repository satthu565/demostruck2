class TransmisionsController < ApplicationController
  before_action :set_transmision, only: [:show, :edit, :update, :destroy]

  # GET /transmisions
  # GET /transmisions.json
  def index
    @transmisions = Transmision.all
  end

  # GET /transmisions/1
  # GET /transmisions/1.json
  def show
  end

  # GET /transmisions/new
  def new
    @transmision = Transmision.new
  end

  # GET /transmisions/1/edit
  def edit
  end

  # POST /transmisions
  # POST /transmisions.json
  def create
    @transmision = Transmision.new(transmision_params)

    respond_to do |format|
      if @transmision.save
        format.html { redirect_to @transmision, notice: 'Transmision was successfully created.' }
        format.json { render :show, status: :created, location: @transmision }
      else
        format.html { render :new }
        format.json { render json: @transmision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmisions/1
  # PATCH/PUT /transmisions/1.json
  def update
    respond_to do |format|
      if @transmision.update(transmision_params)
        format.html { redirect_to @transmision, notice: 'Transmision was successfully updated.' }
        format.json { render :show, status: :ok, location: @transmision }
      else
        format.html { render :edit }
        format.json { render json: @transmision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmisions/1
  # DELETE /transmisions/1.json
  def destroy
    @transmision.destroy
    respond_to do |format|
      format.html { redirect_to transmisions_url, notice: 'Transmision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmision
      @transmision = Transmision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transmision_params
      params.require(:transmision).permit(:name)
    end
end

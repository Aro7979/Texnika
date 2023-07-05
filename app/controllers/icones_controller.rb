class IconesController < ApplicationController
  before_action :set_icone, only: %i[ show edit update destroy ]
    before_action :authenticate_user!
  # GET /icones or /icones.json
  def index
    @icones = Icone.all
  end

  # GET /icones/1 or /icones/1.json
  def show
  end

  # GET /icones/new
  def new
    @icone = Icone.new
  end

  # GET /icones/1/edit
  def edit
  end

  # POST /icones or /icones.json
  def create
    @icone = Icone.new(icone_params)

    respond_to do |format|
      if @icone.save
        format.html { redirect_to icone_url(@icone), notice: "Icone was successfully created." }
        format.json { render :show, status: :created, location: @icone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @icone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icones/1 or /icones/1.json
  def update
    respond_to do |format|
      if @icone.update(icone_params)
        format.html { redirect_to icone_url(@icone), notice: "Icone was successfully updated." }
        format.json { render :show, status: :ok, location: @icone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @icone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icones/1 or /icones/1.json
  def destroy
    @icone.destroy

    respond_to do |format|
      format.html { redirect_to icones_url, notice: "Icone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icone
      @icone = Icone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def icone_params
      params.require(:icone).permit(:title, :description, :image_url)
    end
end

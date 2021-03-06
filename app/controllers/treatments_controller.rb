class TreatmentsController < ApplicationController
  layout 'intranet'
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to intranet_url, :alert => exception.message
  end

  def note_params
  params.require(:treatment).permit(:what, :ever)
end
  # GET /treatments
  # GET /treatments.json
  def index
    #@treatments = Treatment.all
    @treatments = Treatment.paginate(:page => params[:page], :per_page => 5)
    respond_to do |format|
      format.html
      format.csv { send_data @dentists.to_csv }
      format.xls
    end
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to @treatment, notice: 'Tratamiento creado correctamente' }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to @treatment, notice: 'Tratamiento actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to treatments_url, notice: 'Tratamiento eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = Treatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_params
      params.require(:treatment).permit(:nombre, :descripcion, :costo)
    end
end

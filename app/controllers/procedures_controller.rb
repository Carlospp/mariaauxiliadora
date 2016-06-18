class ProceduresController < ApplicationController
  layout 'intranet'
  before_action :set_procedure, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  load_and_authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to intranet_url, :alert => exception.message
  end
  # GET /procedures
  # GET /procedures.json
  def index
    @procedures = Procedure.all
  end

  # GET /procedures/1
  # GET /procedures/1.json
  def show
    @historia = Procedure.find(params[:id]);
    @e = Employee.find(@historia.employee_id);
    @paciente = Patient.find(@historia.patient_id);
  end

  # GET /procedures/new
  def new
    @procedure = Procedure.new
    #@procedure.procedures.build
  end

  # GET /procedures/1/edit
  def edit
  end

  # POST /procedures
  # POST /procedures.json
  def create
    @procedure = Procedure.new(procedure_params)

    respond_to do |format|
      if @procedure.save
        format.html { redirect_to @procedure, notice: 'Encuentro odontologico creado correctamente.' }
        format.json { render :show, status: :created, location: @procedure }
      else
        format.html { render :new }
        format.json { render json: @procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedures/1
  # PATCH/PUT /procedures/1.json
  def update
    respond_to do |format|
      if @procedure.update(procedure_params)
        format.html { redirect_to @procedure, notice: 'Encuentro odontologico actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @procedure }
      else
        format.html { render :edit }
        format.json { render json: @procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedures/1
  # DELETE /procedures/1.json
  def destroy
    @procedure.destroy
    respond_to do |format|
      format.html { redirect_to procedures_url, notice: 'Encuentro odontologico eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure
      @procedure = Procedure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_params
      params.require(:procedure).permit(:patient_id, :feccreacion, :horacreacion, :employee_id, :appointment, :grupo, :tratamiento, :medicamentos, :alergias, :hemorragias, :irradiaciones, :sinusitis, :respiratorias, :cardiopatias, :diabetes, :fiebre, :hepatitis, :hipertension, :otrasenfermedades, :cepillado, :hilo, :otros, :obsanamnesis, :temperatura, :pulso, :tension, :respiracion, :mandibula, :labios, :lengua, :paladar, :boca, :carrillos, :glandulas, :maxilares, :senosmaxilares, :masticadores, :nervioso, :vascular, :linfatico, :oclusion, :obsfisico, :abrasion, :placacalificada, :pulpar, :placablanda, :fluorosis, :manchas, :obsdental, :causaexterna, :finalidad, :dxprincipal,:actual, :final, :odontograma, :placa1, :placa2)
    end
end

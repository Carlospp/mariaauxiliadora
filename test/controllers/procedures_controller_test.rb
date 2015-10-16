require 'test_helper'

class ProceduresControllerTest < ActionController::TestCase
  setup do
    @procedure = procedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procedure" do
    assert_difference('Procedure.count') do
      post :create, procedure: { abrasion: @procedure.abrasion, alergias: @procedure.alergias, appointment: @procedure.appointment, boca: @procedure.boca, cardiopatias: @procedure.cardiopatias, carrillos: @procedure.carrillos, causaexterna: @procedure.causaexterna, cepillado: @procedure.cepillado, diabetes: @procedure.diabetes, dxprincipal: @procedure.dxprincipal, employee_id: @procedure.employee_id, feccreacion: @procedure.feccreacion, fiebre: @procedure.fiebre, finalidad: @procedure.finalidad, fluorosis: @procedure.fluorosis, glandulas: @procedure.glandulas, grupo: @procedure.grupo, hemorragias: @procedure.hemorragias, hepatitis: @procedure.hepatitis, hilo: @procedure.hilo, hipertension: @procedure.hipertension, horacreacion: @procedure.horacreacion, irradiaciones: @procedure.irradiaciones, labios: @procedure.labios, lengua: @procedure.lengua, linfatico: @procedure.linfatico, manchas: @procedure.manchas, mandibula: @procedure.mandibula, masticadores: @procedure.masticadores, maxilares: @procedure.maxilares, medicamentos: @procedure.medicamentos, nervioso: @procedure.nervioso, obsanamnesis: @procedure.obsanamnesis, obsdental: @procedure.obsdental, obsfisico: @procedure.obsfisico, oclusion: @procedure.oclusion, otrasenfermedades: @procedure.otrasenfermedades, otros: @procedure.otros, paladar: @procedure.paladar, patient_id: @procedure.patient_id, placablanda: @procedure.placablanda, placacalificada: @procedure.placacalificada, pulpar: @procedure.pulpar, pulso: @procedure.pulso, respiracion: @procedure.respiracion, respiratorias: @procedure.respiratorias, senosmaxilares: @procedure.senosmaxilares, sinusitis: @procedure.sinusitis, temperatura: @procedure.temperatura, tension: @procedure.tension, tratamiento: @procedure.tratamiento, vascular: @procedure.vascular }
    end

    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should show procedure" do
    get :show, id: @procedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procedure
    assert_response :success
  end

  test "should update procedure" do
    patch :update, id: @procedure, procedure: { abrasion: @procedure.abrasion, alergias: @procedure.alergias, appointment: @procedure.appointment, boca: @procedure.boca, cardiopatias: @procedure.cardiopatias, carrillos: @procedure.carrillos, causaexterna: @procedure.causaexterna, cepillado: @procedure.cepillado, diabetes: @procedure.diabetes, dxprincipal: @procedure.dxprincipal, employee_id: @procedure.employee_id, feccreacion: @procedure.feccreacion, fiebre: @procedure.fiebre, finalidad: @procedure.finalidad, fluorosis: @procedure.fluorosis, glandulas: @procedure.glandulas, grupo: @procedure.grupo, hemorragias: @procedure.hemorragias, hepatitis: @procedure.hepatitis, hilo: @procedure.hilo, hipertension: @procedure.hipertension, horacreacion: @procedure.horacreacion, irradiaciones: @procedure.irradiaciones, labios: @procedure.labios, lengua: @procedure.lengua, linfatico: @procedure.linfatico, manchas: @procedure.manchas, mandibula: @procedure.mandibula, masticadores: @procedure.masticadores, maxilares: @procedure.maxilares, medicamentos: @procedure.medicamentos, nervioso: @procedure.nervioso, obsanamnesis: @procedure.obsanamnesis, obsdental: @procedure.obsdental, obsfisico: @procedure.obsfisico, oclusion: @procedure.oclusion, otrasenfermedades: @procedure.otrasenfermedades, otros: @procedure.otros, paladar: @procedure.paladar, patient_id: @procedure.patient_id, placablanda: @procedure.placablanda, placacalificada: @procedure.placacalificada, pulpar: @procedure.pulpar, pulso: @procedure.pulso, respiracion: @procedure.respiracion, respiratorias: @procedure.respiratorias, senosmaxilares: @procedure.senosmaxilares, sinusitis: @procedure.sinusitis, temperatura: @procedure.temperatura, tension: @procedure.tension, tratamiento: @procedure.tratamiento, vascular: @procedure.vascular }
    assert_redirected_to procedure_path(assigns(:procedure))
  end

  test "should destroy procedure" do
    assert_difference('Procedure.count', -1) do
      delete :destroy, id: @procedure
    end

    assert_redirected_to procedures_path
  end
end

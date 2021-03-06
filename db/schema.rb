# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151022145312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "dni"
    t.date     "fecnac"
    t.string   "sexo"
    t.integer  "telefono"
    t.integer  "celular"
    t.text     "direccion"
    t.string   "email"
    t.date     "fecingreso"
    t.string   "estado"
    t.string   "codCOP"
    t.integer  "position_id"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "employees", ["position_id"], name: "index_employees_on_position_id", using: :btree
  add_index "employees", ["user_id"], name: "index_employees_on_user_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "dni"
    t.date     "fecnac"
    t.string   "sexo"
    t.integer  "telefono"
    t.integer  "celular"
    t.text     "direccion"
    t.string   "email"
    t.date     "fecingreso"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "sueldo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.integer  "patient_id"
    t.date     "feccreacion"
    t.string   "horacreacion"
    t.integer  "employee_id"
    t.string   "appointment"
    t.string   "grupo"
    t.string   "tratamiento"
    t.string   "medicamentos"
    t.string   "alergias"
    t.string   "hemorragias"
    t.string   "irradiaciones"
    t.string   "sinusitis"
    t.string   "respiratorias"
    t.string   "cardiopatias"
    t.string   "diabetes"
    t.string   "fiebre"
    t.string   "hepatitis"
    t.string   "hipertension"
    t.string   "otrasenfermedades"
    t.string   "cepillado"
    t.string   "hilo"
    t.string   "otros"
    t.text     "obsanamnesis"
    t.string   "temperatura"
    t.string   "pulso"
    t.string   "tension"
    t.string   "respiracion"
    t.string   "mandibula"
    t.string   "labios"
    t.string   "lengua"
    t.string   "paladar"
    t.string   "boca"
    t.string   "carrillos"
    t.string   "glandulas"
    t.string   "maxilares"
    t.string   "senosmaxilares"
    t.string   "masticadores"
    t.string   "nervioso"
    t.string   "vascular"
    t.string   "linfatico"
    t.string   "oclusion"
    t.text     "obsfisico"
    t.string   "abrasion"
    t.string   "placacalificada"
    t.string   "pulpar"
    t.string   "placablanda"
    t.string   "fluorosis"
    t.string   "manchas"
    t.string   "obsdental"
    t.string   "causaexterna"
    t.string   "finalidad"
    t.string   "dxprincipal"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "actual_file_name"
    t.string   "actual_content_type"
    t.integer  "actual_file_size"
    t.datetime "actual_updated_at"
    t.string   "final_file_name"
    t.string   "final_content_type"
    t.integer  "final_file_size"
    t.datetime "final_updated_at"
    t.string   "odontograma_file_name"
    t.string   "odontograma_content_type"
    t.integer  "odontograma_file_size"
    t.datetime "odontograma_updated_at"
    t.string   "placa1_file_name"
    t.string   "placa1_content_type"
    t.integer  "placa1_file_size"
    t.datetime "placa1_updated_at"
    t.string   "placa2_file_name"
    t.string   "placa2_content_type"
    t.integer  "placa2_file_size"
    t.datetime "placa2_updated_at"
  end

  add_index "procedures", ["employee_id"], name: "index_procedures_on_employee_id", using: :btree
  add_index "procedures", ["patient_id"], name: "index_procedures_on_patient_id", using: :btree

  create_table "treatments", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "costo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "rol",                    default: "usuario"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "employees", "positions"
  add_foreign_key "employees", "users"
  add_foreign_key "procedures", "employees"
  add_foreign_key "procedures", "patients"
end

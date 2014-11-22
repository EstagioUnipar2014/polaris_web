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

ActiveRecord::Schema.define(version: 20141122022425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alimentos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animais", force: true do |t|
    t.string   "identificacao"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.boolean  "ativo"
    t.boolean  "lactacao"
    t.boolean  "nascido_na_propriedade"
    t.string   "informacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "propriedade_id"
    t.integer  "raca_id"
    t.integer  "classificacao_id"
    t.string   "foto_principal"
  end

  add_index "animais", ["classificacao_id"], name: "index_animais_on_classificacao_id", using: :btree
  add_index "animais", ["propriedade_id"], name: "index_animais_on_propriedade_id", using: :btree
  add_index "animais", ["raca_id"], name: "index_animais_on_raca_id", using: :btree

  create_table "animais_doencas", force: true do |t|
    t.integer  "animal_id"
    t.integer  "doenca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animais_doencas", ["animal_id"], name: "index_animais_doencas_on_animal_id", using: :btree
  add_index "animais_doencas", ["doenca_id"], name: "index_animais_doencas_on_doenca_id", using: :btree

  create_table "animal_dieta", force: true do |t|
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "dieta_id"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animal_dieta", ["animal_id"], name: "index_animal_dieta_on_animal_id", using: :btree
  add_index "animal_dieta", ["dieta_id"], name: "index_animal_dieta_on_dieta_id", using: :btree

  create_table "animals", force: true do |t|
    t.string   "identificacao"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.boolean  "ativo"
    t.boolean  "lactacao"
    t.boolean  "nascido_na_propriedade"
    t.string   "informacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ciclos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ciclos_dietas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dieta_id"
    t.integer  "ciclo_id"
  end

  add_index "ciclos_dietas", ["ciclo_id"], name: "index_ciclos_dietas_on_ciclo_id", using: :btree
  add_index "ciclos_dietas", ["dieta_id"], name: "index_ciclos_dietas_on_dieta_id", using: :btree

  create_table "cios", force: true do |t|
    t.date     "data_cio"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cios", ["animal_id"], name: "index_cios_on_animal_id", using: :btree

  create_table "classificacoes", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coberturas", force: true do |t|
    t.date     "data"
    t.integer  "cio_id"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coberturas", ["animal_id"], name: "index_coberturas_on_animal_id", using: :btree
  add_index "coberturas", ["cio_id"], name: "index_coberturas_on_cio_id", using: :btree

  create_table "dietas", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "propriedade_id"
  end

  add_index "dietas", ["propriedade_id"], name: "index_dietas_on_propriedade_id", using: :btree

  create_table "doencas", force: true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doencas_exames", force: true do |t|
    t.integer  "doenca_id"
    t.integer  "exame_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "doencas_exames", ["doenca_id"], name: "index_doencas_exames_on_doenca_id", using: :btree
  add_index "doencas_exames", ["exame_id"], name: "index_doencas_exames_on_exame_id", using: :btree

  create_table "exames", force: true do |t|
    t.date     "data"
    t.string   "descricao"
    t.boolean  "efetuado"
    t.string   "resultado"
    t.string   "informacoes"
    t.integer  "animal_id"
    t.integer  "tipo_exame_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exames", ["animal_id"], name: "index_exames_on_animal_id", using: :btree
  add_index "exames", ["tipo_exame_id"], name: "index_exames_on_tipo_exame_id", using: :btree

  create_table "imagens", force: true do |t|
    t.string   "url"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagens", ["animal_id"], name: "index_imagens_on_animal_id", using: :btree

  create_table "medicamentos", force: true do |t|
    t.string   "nome"
    t.integer  "tipo_medicamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medicamentos", ["tipo_medicamento_id"], name: "index_medicamentos_on_tipo_medicamento_id", using: :btree

  create_table "medidas", force: true do |t|
    t.integer  "quantidade"
    t.integer  "alimento_id"
    t.integer  "ciclo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_id"
  end

  add_index "medidas", ["alimento_id"], name: "index_medidas_on_alimento_id", using: :btree
  add_index "medidas", ["ciclo_id"], name: "index_medidas_on_ciclo_id", using: :btree
  add_index "medidas", ["unidade_id"], name: "index_medidas_on_unidade_id", using: :btree

  create_table "notificacoes", force: true do |t|
    t.string   "mensagem"
    t.string   "url"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "visualizada"
    t.integer  "propriedade_id"
  end

  add_index "notificacoes", ["propriedade_id"], name: "index_notificacoes_on_propriedade_id", using: :btree

  create_table "ordenhas", force: true do |t|
    t.date     "data"
    t.integer  "periodo"
    t.float    "quantidade"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordenhas", ["animal_id"], name: "index_ordenhas_on_animal_id", using: :btree

  create_table "pesagens", force: true do |t|
    t.float    "peso"
    t.date     "data_pesagem"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unidade_id"
  end

  add_index "pesagens", ["animal_id"], name: "index_pesagens_on_animal_id", using: :btree
  add_index "pesagens", ["unidade_id"], name: "index_pesagens_on_unidade_id", using: :btree

  create_table "previsao_cios", force: true do |t|
    t.date     "data"
    t.integer  "cio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "previsao_cios", ["cio_id"], name: "index_previsao_cios_on_cio_id", using: :btree

  create_table "propriedades", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proprietarios", force: true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "racas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sociedades", force: true do |t|
    t.integer  "propriedade_id"
    t.integer  "proprietario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sociedades", ["propriedade_id"], name: "index_sociedades_on_propriedade_id", using: :btree
  add_index "sociedades", ["proprietario_id"], name: "index_sociedades_on_proprietario_id", using: :btree

  create_table "tipo_exames", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_medicamentos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_vacinas", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abreviacao"
    t.string   "tipo"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "propriedade_id"
    t.string   "username"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["propriedade_id"], name: "index_usuarios_on_propriedade_id", using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  add_index "usuarios", ["username"], name: "index_usuarios_on_username", unique: true, using: :btree

  create_table "vacinas", force: true do |t|
    t.date     "data_vacina"
    t.boolean  "efetuada"
    t.float    "dosagem"
    t.integer  "animal_id"
    t.integer  "tipo_vacina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "medicamento_id"
    t.integer  "unidade_id"
  end

  add_index "vacinas", ["animal_id"], name: "index_vacinas_on_animal_id", using: :btree
  add_index "vacinas", ["medicamento_id"], name: "index_vacinas_on_medicamento_id", using: :btree
  add_index "vacinas", ["tipo_vacina_id"], name: "index_vacinas_on_tipo_vacina_id", using: :btree
  add_index "vacinas", ["unidade_id"], name: "index_vacinas_on_unidade_id", using: :btree

end

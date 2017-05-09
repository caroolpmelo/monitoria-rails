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

ActiveRecord::Schema.define(version: 20170423134251) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pratos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "descricao"
  end

  create_table "pratos_restaurantes", id: false, force: :cascade do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", force: :cascade do |t|
    t.float    "nota"
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["cliente_id"], name: "index_qualificacoes_on_cliente_id"
    t.index ["restaurante_id"], name: "index_qualificacoes_on_restaurante_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "nome"
    t.string   "especialidade"
    t.string   "endereco"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
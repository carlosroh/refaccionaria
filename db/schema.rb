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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130607010533) do

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion_fiscal"
    t.string   "ciudad"
    t.boolean  "mayoreo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "compras", :force => true do |t|
    t.integer  "num_empleado"
    t.integer  "num_factura"
    t.date     "fecha_factura"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "proveedor_id"
    t.boolean  "cerrado",       :default => false
  end

  create_table "compras_productos", :force => true do |t|
    t.integer  "compra_id"
    t.integer  "producto_id"
    t.float    "precio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "cantidad"
  end

  create_table "empleados", :force => true do |t|
    t.boolean  "administrador"
    t.boolean  "activo"
    t.string   "nombre"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "compras",         :default => false
  end

  add_index "empleados", ["remember_token"], :name => "index_empleados_on_remember_token"

  create_table "no_compras", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "vendedor_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "cerrado",     :default => false
  end

  create_table "productos", :force => true do |t|
    t.string   "descripcion"
    t.integer  "minimo"
    t.integer  "maximo"
    t.float    "precio_min"
    t.float    "precio_max"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proveedors", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reportes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ventas_productos", :force => true do |t|
    t.integer  "no_compra_id"
    t.integer  "producto_id"
    t.integer  "cantidad_producto"
    t.float    "precio"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end

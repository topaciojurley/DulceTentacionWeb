class CreateTipopostres < ActiveRecord::Migration
  def change
    create_table :tipopostres do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps null: false
    end
  end
end

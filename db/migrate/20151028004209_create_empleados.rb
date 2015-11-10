class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :rut
      t.string :direccion
      t.string :correo
      t.date :fechanacimiento
      t.integer :telefono

      t.timestamps null: false
    end
  end
end

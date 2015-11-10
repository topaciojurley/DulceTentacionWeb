class CreateEmpleadoEspecialidads < ActiveRecord::Migration
  def change
    create_table :empleado_especialidads do |t|
      t.references :empleado, index: true, foreign_key: true
      t.references :especialidad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

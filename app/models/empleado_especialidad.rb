class EmpleadoEspecialidad < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :especialidad

end

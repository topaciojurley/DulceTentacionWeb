class Especialidad < ActiveRecord::Base
  has_many :empleado_especialidad
  has_many :empleado, :through => :empleado_especialidad
  validates :nombre, :detalle, :presence => { message: "Debes llenar el campo" }

end

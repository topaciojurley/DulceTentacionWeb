class Empleado < ActiveRecord::Base
  validates :nombre, :apellido, :rut, :presence => { message: "Debes llenar el campo" }
has_many :empleado_especialidad
has_many :especialidad, :through => :empleado_especialidad


end

class Tipopostre < ActiveRecord::Base
    validates :nombre, :descripcion, :presence => { message: "Debes llenar el campo" }
end

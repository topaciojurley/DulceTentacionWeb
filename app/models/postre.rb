class Postre < ActiveRecord::Base
  belongs_to :tipopostre

  validates :nombre, :presence => { message: "Debes llenar el campo" }

end

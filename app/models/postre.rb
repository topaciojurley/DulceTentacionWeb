class Postre < ActiveRecord::Base
  belongs_to :tipopostre

  validates :nombre, :presence => { message: "Debes llenar el campo" }

scope :porcion_minimo, ->(porcion_minimo){where(["porcion > ?", porcion_minimo])}
end

class AddDetallesToPostres < ActiveRecord::Migration
  def change
    add_column :postres, :detalles, :string
  end
end

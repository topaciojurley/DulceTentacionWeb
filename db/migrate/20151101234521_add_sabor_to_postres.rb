class AddSaborToPostres < ActiveRecord::Migration
  def change
    add_column :postres, :sabor, :string
  end
end

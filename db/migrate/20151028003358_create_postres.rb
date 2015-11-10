class CreatePostres < ActiveRecord::Migration
  def change
    create_table :postres do |t|
      t.string :nombre
      t.integer :porcion
      t.integer :precio
      t.references :tipopostre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

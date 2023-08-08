class CreateGlosses < ActiveRecord::Migration[7.0]
  def change
    create_table :glosses do |t|
      t.string :concepto
      t.string :traducción
      t.string :definición
      t.string :enlaces_de_referencia

      t.timestamps
    end
  end
end

class CreateProfOcus < ActiveRecord::Migration[5.2]
  def change
    create_table :prof_ocus do |t|
      t.references :professional, foreign_key: true
      t.references :ocupation, foreign_key: true
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end

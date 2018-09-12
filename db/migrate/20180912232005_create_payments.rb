class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.date :date
      t.integer :price
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end

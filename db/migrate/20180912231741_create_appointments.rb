class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.boolean :done, default: false
      t.integer :client_id, index: true, foreign_key: true
      t.integer :professional_id, index: true, foreign_key: true
      t.timestamps
    end
  add_foreign_key :appointments, :users, column: :client_id
  add_foreign_key :appointments, :users, column: :professional_id
  end
end

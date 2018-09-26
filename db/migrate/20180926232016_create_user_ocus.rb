class CreateUserOcus < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ocus do |t|
      t.references :user, foreign_key: true
      t.references :ocupation, foreign_key: true
      t.integer :Price

      t.timestamps
    end
  end
end

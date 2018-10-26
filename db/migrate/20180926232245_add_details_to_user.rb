class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ocupation, :string
    add_column :users, :rol, :integer
  end
end

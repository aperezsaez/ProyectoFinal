class RemoveRolFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rol, :integer
  end
end

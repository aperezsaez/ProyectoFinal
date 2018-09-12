class AddBioToProfessional < ActiveRecord::Migration[5.2]
  def change
    add_column :professionals, :bio, :string, :limit => 500
  end
end

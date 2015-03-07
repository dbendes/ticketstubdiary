class AddSgIdToBands < ActiveRecord::Migration
  def change
    add_column :bands, :sgid, :integer
  end
end

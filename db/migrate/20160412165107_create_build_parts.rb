class CreateBuildParts < ActiveRecord::Migration
  def change
    create_table :build_parts do |t|
      t.references :build, index: true
      t.references :part, index: true
      t.integer :units_per, index: false

      t.timestamps
    end
  end
end

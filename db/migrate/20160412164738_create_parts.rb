class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.boolean :custom
      t.text :desc
      t.string :cuid
      
      t.timestamps
    end
  end
end

class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :website
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :sgID

      t.timestamps
    end
  end
end

class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :date
      t.references :venue, index: true

      t.timestamps
    end
  end
end

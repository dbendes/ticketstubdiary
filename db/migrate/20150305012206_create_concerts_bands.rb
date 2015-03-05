class CreateConcertsBands < ActiveRecord::Migration
  def change
    create_table :concerts_bands, :id => false do |t|
      t.references :concert
      t.references :band
    end
    add_index :concerts_bands, [:concert_id, :band_id]
  end
end

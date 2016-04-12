class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.date :bom_date
      t.date :prod_start_date
      t.date :corrugate_due_date
      t.date :production_end_date
      t.integer :quantity

      t.timestamps
    end
  end
end

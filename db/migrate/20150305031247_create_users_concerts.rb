class CreateUsersConcerts < ActiveRecord::Migration
  def change
    create_table :users_concerts, :id => false do |t|
      t.references :user
      t.references :concert
    end
    add_index :users_concerts, [:user_id, :concert_id]
  end

end

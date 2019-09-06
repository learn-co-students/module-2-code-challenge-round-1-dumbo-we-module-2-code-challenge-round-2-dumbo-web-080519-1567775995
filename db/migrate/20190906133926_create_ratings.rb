class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rate
      t.integer :guest_id
      t.integer :episode_id

      t.timestamps
    end
  end
end

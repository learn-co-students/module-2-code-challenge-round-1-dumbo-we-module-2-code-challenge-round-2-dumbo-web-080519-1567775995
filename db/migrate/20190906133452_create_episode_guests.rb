class CreateEpisodeGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :episode_guest do |t|
      t.integer :episode_id
      t.integer :guest_id
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :names
      t.integer :rating
      t.belongs_to :guests
      t.belongs_to :episodes

      t.timestamps
    end
  end
end

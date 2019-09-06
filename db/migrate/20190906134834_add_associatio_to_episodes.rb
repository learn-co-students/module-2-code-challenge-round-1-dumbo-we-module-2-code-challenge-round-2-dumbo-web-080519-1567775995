class AddAssociatioToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :appearance_id, :integer
  end
end

class DroptableDistributorsInExampleMigrations < ActiveRecord::Migration[7.0]
  def change
    drop_table : table_distributors, force: :cascade
  end
end

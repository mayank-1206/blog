class AddNameToExampleMigrations < ActiveRecord::Migration[7.0]
  def change
    add_column :example_migrations, :name, :string
  end
end

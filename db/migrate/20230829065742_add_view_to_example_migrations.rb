class AddViewToExampleMigrations < ActiveRecord::Migration[7.0]
  def change
    add_column :example_migrations, :view, :text
  end
end

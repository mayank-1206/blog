class CreateExampleMigrations < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
     add_column :distributors, :name, :string
    end
  end
end

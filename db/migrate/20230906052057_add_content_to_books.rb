class AddContentToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :content, :text
  end
end

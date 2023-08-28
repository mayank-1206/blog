class AddViewToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :view, :text
  end
end

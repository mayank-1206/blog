class RemoveViewFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :view, :string
  end
end

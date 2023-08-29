class RemovePortFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :port, :string
  end
end

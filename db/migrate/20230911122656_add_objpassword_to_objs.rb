class AddObjpasswordToObjs < ActiveRecord::Migration[7.0]
  def change
    add_column :objs, :objpassword, :string
  end
end

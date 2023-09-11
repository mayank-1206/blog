class AddObjnameToObjs < ActiveRecord::Migration[7.0]
  def change
    add_column :objs, :objname, :string
  end
end

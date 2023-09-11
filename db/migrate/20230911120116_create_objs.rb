class CreateObjs < ActiveRecord::Migration[7.0]
  def change
    create_table :objs do |t|

      t.timestamps
    end
  end
end

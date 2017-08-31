class AddSerialNumToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :serial_num, :int
  end
end

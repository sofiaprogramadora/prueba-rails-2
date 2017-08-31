class AddSizeToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :size, :int
  end
end

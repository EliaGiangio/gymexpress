class DropBarbells < ActiveRecord::Migration[6.1]
  def change
        drop_table :barbells
  end
end

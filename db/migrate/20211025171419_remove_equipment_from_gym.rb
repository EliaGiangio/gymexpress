class RemoveEquipmentFromGym < ActiveRecord::Migration[6.1]
  def change
    remove_column :gyms, :equipment, :integer
  end
end

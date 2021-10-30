class AddBrandToBarbells < ActiveRecord::Migration[6.1]
  def change
    add_column :barbells, :brand, :string
  end
end

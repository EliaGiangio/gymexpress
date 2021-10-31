class AddLogoToGym < ActiveRecord::Migration[6.1]
  def change
    add_column :gyms, :logo, :string
  end
end

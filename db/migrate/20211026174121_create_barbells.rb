class CreateBarbells < ActiveRecord::Migration[6.1]
  def change
    create_table :barbells do |t|
      t.integer :type
      t.integer :weight
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end

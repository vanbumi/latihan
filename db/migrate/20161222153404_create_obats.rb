class CreateObats < ActiveRecord::Migration[5.0]
  def change
    create_table :obats do |t|
      t.string :name
      t.decimal :price
      t.string :suplier

      t.timestamps
    end
  end
end

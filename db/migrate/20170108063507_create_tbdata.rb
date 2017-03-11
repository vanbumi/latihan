class CreateTbdata < ActiveRecord::Migration[5.0]
  def change
    create_table :tbdata do |t|
      t.string :name
      t.string :level
      t.integer :age
      t.text :address

      t.timestamps
    end
  end
end

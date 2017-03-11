class CreateBarangs < ActiveRecord::Migration[5.0]
  def change
    create_table :barangs do |t|
      t.string :kode
      t.string :nama
      t.decimal :harga

      t.timestamps
    end
  end
end

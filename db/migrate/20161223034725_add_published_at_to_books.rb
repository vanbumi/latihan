class AddPublishedAtToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :published_at, :string
  end
end

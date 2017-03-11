json.extract! barang, :id, :kode, :nama, :harga, :created_at, :updated_at
json.url barang_url(barang, format: :json)
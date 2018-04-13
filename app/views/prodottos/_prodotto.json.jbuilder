json.extract! prodotto, :id, :nome, :avversit, :id_cat, :principio_attivo, :created_at, :updated_at
json.url prodotto_url(prodotto, format: :json)

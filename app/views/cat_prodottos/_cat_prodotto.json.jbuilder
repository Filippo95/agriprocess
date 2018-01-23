json.extract! cat_prodotto, :id, :nome, :descrizione, :id_prarent, :created_at, :updated_at
json.url cat_prodotto_url(cat_prodotto, format: :json)

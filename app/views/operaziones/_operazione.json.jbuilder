json.extract! operazione, :id, :nome, :descrizione, :per_ha, :created_at, :updated_at
json.url operazione_url(operazione, format: :json)

json.array!(@crea_modules) do |crea_module|
  json.extract! crea_module, :id, :name, :enabled, :module_type, :status
  json.url crea_module_url(crea_module, format: :json)
end

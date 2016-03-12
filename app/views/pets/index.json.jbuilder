json.array!(@pets) do |pet|
  json.extract! pet, :id, :species, :breed, :name, :age, :sex, :description
  json.url pet_url(pet, format: :json)
end

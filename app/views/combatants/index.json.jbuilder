json.array!(@combatants) do |combatant|
  json.extract! combatant, :id, :caption, :url
  json.url combatant_url(combatant, format: :json)
end

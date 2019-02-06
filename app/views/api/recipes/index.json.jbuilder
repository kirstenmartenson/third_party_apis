json.array! @recipes.each do |recipe|
  json.title recipes["title"]
  json.publisher recipes["publisher"]
  json.source_url recipes["source_url"]
end

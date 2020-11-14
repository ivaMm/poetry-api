json.count Poem.count
json.poems @poems do |poem|
  json.extract! poem, :id, :author, :title
end

json.array! @poems do |poem|
  json.extract! poem, :id, :author, :title
end

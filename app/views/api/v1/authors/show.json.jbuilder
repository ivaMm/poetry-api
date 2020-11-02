json.extract! @author, :id, :name
json.books @author.books do |book|
  json.extract! book, :id, :title, :year
  json.poems book.poems do |poem|
    json.extract! poem, :id, :title
   end
end

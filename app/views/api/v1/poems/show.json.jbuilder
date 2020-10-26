json.author { json.extract! @poem.author, :name }
json.book { json.extract! @poem.book, :title }
json.extract! @poem, :id, :title, :content

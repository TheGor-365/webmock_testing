json.extract! book, :id, :author, :overview, :created_at, :updated_at
json.url book_url(book, format: :json)

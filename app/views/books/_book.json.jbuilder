json.extract! book, :id, :title, :author, :price, :datep, :created_at, :updated_at
json.url book_url(book, format: :json)

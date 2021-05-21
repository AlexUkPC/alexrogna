json.extract! book, :id, :title, :subtitle, :author, :publisher, :dop, :resources_link, :github_link, :created_at, :updated_at
json.url book_url(book, format: :json)

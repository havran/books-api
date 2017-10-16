Rails.application.routes.draw do
  scope module: 'api' do
    scope module: 'v1' do

      # Search books API
      scope 'search'do
        get   'isbn/:isbn', to: 'books/search#isbn'
      end

      post 'book-add',      to: 'books/crud#create'
      get  ':id',           to: 'books/crud#read',  constraints: { id: /[0-9]+/ }

    end
  end
end

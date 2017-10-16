require 'roar/decorator'
require 'roar/json/hal'

class BookRepresenter < Roar::Decorator
  include Roar::JSON::HAL
  include Roar::Hypermedia

  property :id
  property :title
  property :author
  property :isbn

  link :self do
    "http://books/#{represented.id}"
  end
end
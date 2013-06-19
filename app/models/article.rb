class Article < CouchRest::Model::Base

  property :title, String
  property :body, String
  property :published_at, Time
  property :author_name, String
  property :tags, [String]

  timestamps!


  design do
    view :by_author
    view :by_published_at
  end


end

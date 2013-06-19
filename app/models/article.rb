class Article < CouchRest::Model::Base

  property :title, String
  property :body, String
  property :published_at, Time
  property :author_name, String
  property :tags, [String]

  timestamps!

  def tags_string
    tags.join(",")
  end

  design do
    view :by_author
    view :by_published_at
  end


end

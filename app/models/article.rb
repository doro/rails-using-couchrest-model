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
    view :by_tags,
      :map =>
        "function(doc) {
          if (doc['type'] == 'Article' && doc.tags != null) {
            doc.tags.forEach(function(tag) {
              emit([tag, doc['published_at']], [tag, doc.title]);
            });
          }
        }"


    view :tags_list,
      :map => 
        "function(doc) { 
          if(doc['type'] == 'Article' && doc.tags != null) { 
            doc.tags.forEach(function(tag) {
              emit(tag, 1); 
            });
          }
        }",
      :reduce => 
        "function(keys, values, rereduce) { 
          return sum(values);
        }"
  end
end

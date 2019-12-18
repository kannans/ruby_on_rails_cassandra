class Post
  include Cequel::Record

  key :id, :timeuuid, auto: true
  column :title, :text
  column :body, :text
  column :author, :text

  timestamps
end

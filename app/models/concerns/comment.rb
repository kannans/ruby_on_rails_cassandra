class Comment
  include Cequel::Record

  belongs_to :post
  key :id, :timeuuid, auto: true
  column :message, :text
  column :author, :text

  timestamps
end

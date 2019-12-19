class Post
  include Cequel::Record

  belongs_to :blog
  key :id, :timeuuid, auto: true
  column :title, :text
  column :body, :text
  column :author, :text

  has_many :comments, dependent: :destroy

  timestamps
end

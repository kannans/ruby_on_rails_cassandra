class Blog
  include Cequel::Record

  key :subdomain, :text
  column :name, :text
  column :description, :text
  column :status, :enum, values: { open: 1, closed: 2 }
  timestamps

  has_many :posts
end
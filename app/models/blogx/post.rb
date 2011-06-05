class Blogx::Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title
  field :body
  field :author
  field :author_email

  validates_presence_of :title, :author

  slug :title
end

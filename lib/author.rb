require "pry"

class Author

  attr_accessor :name, :posts

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
    @@posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.title
    post.author = self
    @posts << post
    @@posts << post
  end

  def self.post_count
    @@posts.count
  end

end

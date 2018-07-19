class Post

  attr_accessor :posts, :author

  @@all = []

  def initialize(post)
    @post = post
    @author = author
    @@all << self
  end

  def title
    @post
  end

  def author_name
    if self.author == nil
      nil
    elsif author.name
        author.name
    end
  end

end

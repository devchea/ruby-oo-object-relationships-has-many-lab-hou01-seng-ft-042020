require 'pry'

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |post|
      post.author == self
    # binding.pry
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    # binding.pry
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end

end

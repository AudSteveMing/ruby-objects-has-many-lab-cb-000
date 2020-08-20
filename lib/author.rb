# class Authora
#
#   attr_accessor :name
#
# def initialize(name)
#   @name = name
# end
#
# def posts
# Post.all
# end
#
# def add_post(post)
#   post.author = self
#
# end
#
# def add_post_by_title(title)
#   new_post = Post.new(title)
#   self.add_post(new_post)
# end
#
# def self.post_count
#   Post.all.count
# end
#
# end

require 'pry'

class Author
  attr_accessor :name

  # @@all = []

  def initialize(name)
    @name = name
    # @@all << self
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def posts
    Post.all.select do |post|
    post.author == self
    # puts self
    # puts post.author
  end
  end

  def self.post_count
    Post.all.count
  end
end

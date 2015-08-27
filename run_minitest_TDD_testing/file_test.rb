require 'minitest/autorun'
require './file'

class TestBlog < Minitest::Test

  def setup
    @blog = Blog.new
  end

  def test_title_is_treehouse
    assert(Blog.title, msg = nil)
    msg = "MESSAGE"
  end
end
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_nil_value
    assert_nil @node.next_node
  end

  def test_it_has_attributes
    assert_equal "Burke", @node.surname
  end
end

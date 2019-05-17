require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_has_nil_value
    assert_nil @list.head
  end

  def test_it_can_append
    assert_equal "West", @list.append("West").surname
    assert_nil @list.head.next_node
  end

  def test_it_can_count
    @list.append("West")
    assert_equal 1, @list.count
  end

  def test_it_can_convert_to_string
    @list.append("West")
    assert_equal "The West family", @list.to_string
  end
end

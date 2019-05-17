class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(node_surname)
    node = Node.new(node_surname)
    @head = node
  end

  def count
    if @head == nil
      0
    else
      1
    end
  end

  def to_string
    "The #{@head.surname} family"
  end
end

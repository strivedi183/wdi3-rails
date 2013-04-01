require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

class Node
  attr_accessor :d, :p, :n

  def initialize(data)
    self.d = data
    self.p = self.n = nil
  end

  def to_s
    nxt = self.n.nil? ? '' : self.n.d
    prv = self.p.nil? ? '' : self.p.d
    "#{prv} <- #{self.d} -> #{nxt}"
  end
end

class Tree
  attr_accessor :root


  def insert(name)
    if self.root.nil?
      self.root = Node.new(name)
    else
      insert_node(self.root, name)
    end
  end

  def insert_node(node, name)
    if (name < node.d) && (!node.p.nil?)
      insert_node(node.p, name)
    elsif (name > node.d) && (!node.n.nil?)
      insert_node(node.n, name)
    elsif (name < node.d) && (node.p.nil?)
      node.p = Node.new(name)
    elsif (name > node.d) && (node.n.nil?)
      node.n = Node.new(name)
    end
  end

  def find(name)
    node = self.root
    find_node(name, node)
    @name
  end

  def find_node(name, node)
    if (name == node.d)
      @name = node.to_s
    else
      find_node(name, node.p) if !node.p.nil?
      find_node(name, node.n) if !node.n.nil?
    end
  end


  def delete(name)
  end

  def to_s
    node = self.root
    get_node(node)
  end

  def get_node(node)
    if (!node.p.nil?)
      get_node(node.p)
    elsif (!node.n.nil?)
      get_node(node.n)
    else
      puts node.d
    end
  end
end

t1 = Tree.new
t1.insert('mary')
t1.insert('kelly')
t1.insert('james')
t1.insert('lucy')

lucy = t1.find('lucy')
whatever = t1.find('whatever')

t1.to_s

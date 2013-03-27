require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

def fib(x)
  if x == 1 || x == 2
    1
  else
    fib(x - 1) + fib(x - 2)
  end
end

puts fib(4)

class Node
  attr_accessor :data, :prv, :nxt

  def initialize(data)
    self.data = data
    self.prv = self.nxt = nil
  end

binding.pry
end


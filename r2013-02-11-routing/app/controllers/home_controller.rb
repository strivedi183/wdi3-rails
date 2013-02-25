class HomeController < ApplicationController
  def start
  end
  def a
  end
  def b
  end
  def door
    @num = params['result'].downcase
    case @num
    when '1'
      redirect_to('/1')
    when '2'
      redirect_to('/2')
    when '3'
      redirect_to('/3')
    when 'a'
      redirect_to('/a')
    when 'b'
      redirect_to('/b')
    else
    end
  end
  def one
    render '1'
  end
  def two
    render '2'
  end
  def three
    render '3'
  end
end

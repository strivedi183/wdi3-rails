class CalcController < ApplicationController
  def calculate
    @x = params['x'].to_i
    @y = params['y'].to_i
    @operator = params['operator']
    case @operator
    when '+'
      @z = @x + @y
    when '-'
      @z = @x - @y
    else
    end
  end
end

class HomeController < ApplicationController
  def index
    @declaration = Declaration.first
  end
  def filter
    word_id = params[:word_id].to_i
    word = Word.find(word_id).value
    decimal = word_id
    binary = Number.dec2bin(decimal)
    hexadecimal = Number.bin2hex(binary)
    render :json => {word:word, decimal:decimal, binary:binary, hexadecimal: hexadecimal}

  end
end
class DogsController < ApplicationController
  def homepage
  end
  def new
    redirect_to('/dogs')
  end
  def faq
    render 'home/faq'
  end
  def faq2
    render 'faq'
  end
end

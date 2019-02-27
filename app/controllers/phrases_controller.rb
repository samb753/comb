class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.all
  end

  def show
    @phrase = Phrase.find(params[:id])
  end

  def new
    @phrase = Phrase.new
  end

  def create
  end

  def edit
    @phrase = Phrase.find(params[:id])
  end

end

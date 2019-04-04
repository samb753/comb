class PhrasesController < ApplicationController

  before_action :set_phrase, only: [:show, :edit, :update, :destroy]

  def index
    @phrases = Phrase.order(created_at: :desc)
  end

  def show
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.create(phrase_params)
    @phrase.user_id = current_user.id
    if @phrase.save
      redirect_to phrases_path, notice: "Saved"
    else
      render 'new', notice: "Something went wrong, we'll look into it"
    end
  end

  def edit
  end

  def update
    @phrase.update(phrase_params)
    redirect_to phrase_path(@phrase)
  end

  def destroy
    @phrase.destroy
    redirect_to phrases_path, notice: "Deleted"
  end

  def random
    # @phrase = Phrase.order('RANDOM()').first
    @phrase = Phrase.all.sample
  end

  private

  def phrase_params
    params.require(:phrase).permit(:first_word, :second_word, :color, :user_id)
  end

  def set_phrase
    @phrase = Phrase.find(params[:id])
  end
end

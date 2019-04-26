class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @phrases = Phrase.where("user_id = ?", @user.id)
  end
end

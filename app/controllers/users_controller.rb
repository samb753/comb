class UsersController < ApplicationController
  def show
    @user = current_user
    @phrases = Phrase.where("user_id = ?", @user.id)
  end
end

class ChallengesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_challenge, only: [:show, :complete, :start]

  def show
  end

  def complete
    @solution = ChallengeTerminator.new.terminate(@challenge, current_user)
    redirect_to @solution
  end

  def start
    @challenge.started_challenges.create(user: current_user)
    redirect_to @challenge
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end
end

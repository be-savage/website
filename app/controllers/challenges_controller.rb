class ChallengesController < ApplicationController

  authorize_resource

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if verify_recaptcha(model: @challenge) && @challenge.save
      redirect_to challenges_path
    else
      render 'new'
    end
  end

  private

  def challenge_params
    params.require(:challenge).permit(:label, :author)
  end
end
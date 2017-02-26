class ChallengesController < ApplicationController

  authorize_resource

  def index
    @challenges = Challenge.all
    @challenge = Challenge.new
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(public_challenge_params)

    if verify_recaptcha(model: @challenge) && @challenge.save
      redirect_to challenges_path
    else
      render 'new'
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update(challenge_params)
      redirect_to challenges_path
    else
      render 'edit'
    end
  end

  private

  def public_challenge_params
    params.require(:challenge).permit(:label, :author)
  end

  def challenge_params
    params.require(:challenge).permit(:label, :author, :status, :video_link)
  end
end
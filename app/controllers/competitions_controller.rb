class CompetitionsController < ApplicationController
  before_action :set_competition
  before_action :result

  # GET /competitions
  def index
    @competitions = Competition.all

    render json: @competitions
  end

  # GET /competitions/1
  def show
    render json: @competition
  end

  # POST /competitions
  def create
    @competition = Competition.new(competition_params)

    if @competition.save
      render json: @competition, status: :created, location: @competition
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /competitions/1
  def update
    if @competition.update(competition_params)
      render json: @competition
    else
      render json: @competition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /competitions/1
  def destroy
    @competition.destroy
  end

  def place
    result.update!(place: :down)
    render json: @competition
  end

  def up
    result.update!(place: :up)
    render json: @competition
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_competition
    @competition = Competition.find(params[:competition_id] || params[:id])
  end

  def result
    @result ||= CompetitionResult.find_by(dog_id: params[:dog_id], competition_id: params[:competition_id])
  end

  # Only allow a trusted parameter "white list" through.
  def competition_params
    params.require(:competition).permit(:name, :location, :respected)
  end
end

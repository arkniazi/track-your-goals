# frozen_string_literal: true

class GoalsController < ApplicationController
  before_action :set_goal, only: %i[show edit update destroy]

  # GET /goals or /goals.json
  def index
    # @goals = Goal.where("user_id = ? and parent_id = ?", current_user.id, nil)
    @goals = Goal.where(user_id: current_user.id).where(parent_id: nil)
  end

  # GET /goals/1 or /goals/1.json
  def show
    @goal_alert = GoalAlert.where('goal_id = ?', params[:id])
    @sub_goals = Goal.where('parent_id = ?', params[:id])
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit; end

  # POST /goals or /goals.json
  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    respond_to do |format|
      if @goal.save
        @goal_alert = GoalAlert.new
        @goal_alert.goal_id = @goal.id
        @goal_alert.question = params.require(:goal).permit(:alert_question).values[0]
        @goal_alert.save
        format.html { redirect_to(goal_url(@goal), notice: 'Goal was successfully created.') }
        format.json { render(:show, status: :created, location: @goal) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @goal.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /goals/1 or /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to(goal_url(@goal), notice: 'Goal was successfully updated.') }
        format.json { render(:show, status: :ok, location: @goal) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @goal.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /goals/1 or /goals/1.json
  def destroy
    @goal.destroy

    respond_to do |format|
      format.html { redirect_to(goals_url, notice: 'Goal was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  def new_sub_goal
    @goal = Goal.new
    @parent_id = params[:id]
  end

  def create_sub_goal
    @goal = Goal.new(goal_params)
    @goal.parent_id = params[:id]
    respond_to do |format|
      if @goal.save
        @goal_alert = GoalAlert.new
        @goal_alert.goal_id = @goal.id
        @goal_alert.question = params.require(:goal).permit(:alert_question).values[0]
        @goal_alert.save
        format.html { redirect_to(goal_url(@goal), notice: 'Sub Goal was successfully created.') }
        format.json { render(:show, status: :created, location: @goal) }
      else
        format.html { redirect_to(new_sub_goal, notice: 'Error while submitting Form.', status: :unprocessable_entity) }
        format.json { render(json: @goal.errors, status: :unprocessable_entity) }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_goal
    @goal = Goal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def goal_params
    # params.fetch(:goal, {})
    params.require(:goal).permit(:name, :desc, :start_at, :end_at, :active, :completed, :alert_id)
  end
end

# frozen_string_literal: true

class ShiftUsersController < ApplicationController
  before_action :set_shift_user, only: %i[show edit update destroy]

  # GET /shift_users
  # GET /shift_users.json
  def index
    @shift_users = ShiftUser.where.not(work_type: 'holiday')
  end

  # GET /shift_users/1
  # GET /shift_users/1.json
  def show; end

  # GET /shift_users/new
  def new
    year = params[:year] || Date.today.year
    month = params[:month] || Date.today.month
    @start_date = "#{year}-#{month}-1".to_date
    @end_date = @start_date.end_of_month

    @shift_user = current_user.shift_users.new
    @shifts = Shift.where(business_day: @start_date..@end_date)
  end

  # GET /shift_users/1/edit
  def edit; end

  # POST /shift_users
  # POST /shift_users.json
  def create
    shift_users_params.each do |shift_user_param|
      shift_user = current_user.shift_users.find_or_initialize_by(shift_id: shift_user_param[:shift_id])
      shift_user.work_type = shift_user_param[:work_type]
      shift_user.status = 'applying'
      shift_user.save
    end
    redirect_to shift_users_path
  end

  # PATCH/PUT /shift_users/1
  # PATCH/PUT /shift_users/1.json
  def update
    shift_user = ShiftUser.find(params[:id])
    shift_user.status = params[:status]
    shift_user.save!
    redirect_to root_path
  end

  # DELETE /shift_users/1
  # DELETE /shift_users/1.json
  def destroy
    @shift_user.destroy
    respond_to do |format|
      format.html { redirect_to shift_users_url, notice: 'Shift user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shift_user
    @shift_user = ShiftUser.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def shift_user_params
    params.require(:shift_user).permit(:user_id, :shift_id, :work_type)
  end

  def shift_users_params
    params.permit(shift_users: %i[shift_id work_type])[:shift_users]
  end
end

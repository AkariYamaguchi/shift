class ShiftUsersController < ApplicationController
  before_action :set_shift_user, only: [:show, :edit, :update, :destroy]

  # GET /shift_users
  # GET /shift_users.json
  def index
    @shift_users = ShiftUser.all

  end

  # GET /shift_users/1
  # GET /shift_users/1.json
  def show
  end

  # GET /shift_users/new
  def new
    @shift_user = ShiftUser.new
  end

  # GET /shift_users/1/edit
  def edit
  end

  # POST /shift_users
  # POST /shift_users.json
  def create
    @shift_user = ShiftUser.new(shift_user_params)

    respond_to do |format|
      if @shift_user.save
        format.html { redirect_to @shift_user, notice: 'Shift user was successfully created.' }
        format.json { render :show, status: :created, location: @shift_user }
      else
        format.html { render :new }
        format.json { render json: @shift_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_users/1
  # PATCH/PUT /shift_users/1.json
  def update
    respond_to do |format|
      if @shift_user.update(shift_user_params)
        format.html { redirect_to @shift_user, notice: 'Shift user was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_user }
      else
        format.html { render :edit }
        format.json { render json: @shift_user.errors, status: :unprocessable_entity }
      end
    end
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
end

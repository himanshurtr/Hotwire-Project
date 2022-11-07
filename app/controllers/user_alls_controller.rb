class UserAllsController < ApplicationController
  before_action :set_user_all, only: %i[ show edit update destroy ]

  # GET /user_alls or /user_alls.json
  def index
    @user_alls = UserAll.all
  end

  # GET /user_alls/1 or /user_alls/1.json
  def show
  end

  # GET /user_alls/new
  def new
    @user_all = UserAll.new
  end

  # GET /user_alls/1/edit
  def edit
  end 

  # POST /user_alls or /user_alls.json
  def create
    @user_all = UserAll.new(user_all_params)

    respond_to do |format|
      if @user_all.save
        format.turbo_stream { render turbo_stream: turbo_stream.append('user_list', partial: 'user_alls/user', locals: {user_all: @user_all}) }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('remote_modal', partial: 'user_alls/modal', locals: {user_all: @user_all, partial_name: 'form', modal_title:'create new users'}) }
      end
    end
  end

  # PATCH/PUT /user_alls/1 or /user_alls/1.json
  def update
    respond_to do |format|
      if @user_all.update(user_all_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace("user_row_#{@user_all.id}", partial: 'user_alls/user', locals: {user_all: @user_all}) }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('remote_modal', partial: 'user_alls/modal', locals: {user_all: @user_all, partial_name: 'form', modal_title: 'Edit users'}) }
      end
    end
  end

  # DELETE /user_alls/1 or /user_alls/1.json
  def destroy
    @user_all.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("user_row_#{@user_all.id}") }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_all
      @user_all = UserAll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_all_params
      params.require(:user_all).permit(:name, :last_name, :address, :contact_no, :city, :state)
    end
end

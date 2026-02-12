class Task2sController < ApplicationController
  before_action :set_task2, only: %i[ show edit update destroy ]

  # GET /task2s or /task2s.json
  def index
    @task2s = Task2.all
  end

  # GET /task2s/1 or /task2s/1.json
  def show
  end

  # GET /task2s/new
  def new
    @task2 = Task2.new
  end

  # GET /task2s/1/edit
  def edit
  end

  # POST /task2s or /task2s.json
  def create
    @task2 = Task2.new(task2_params)

    respond_to do |format|
      if @task2.save
        format.html { redirect_to @task2, notice: "Task2 was successfully created." }
        format.json { render :show, status: :created, location: @task2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task2s/1 or /task2s/1.json
  def update
    respond_to do |format|
      if @task2.update(task2_params)
        format.html { redirect_to @task2, notice: "Task2 was successfully updated." }
        format.json { render :show, status: :ok, location: @task2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task2s/1 or /task2s/1.json
  def destroy
    @task2.destroy!

    respond_to do |format|
      format.html { redirect_to task2s_path, status: :see_other, notice: "Task2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task2
      @task2 = Task2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task2_params
      params.require(:task2).permit(:title, :description, :deadline)
    end
end

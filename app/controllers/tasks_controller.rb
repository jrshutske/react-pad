class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_pad, only: [:index, :show, :edit, :update, :new, :create, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @pad, notice: 'Task was successfully created.'
    else
      redirect_to @pad
      flash[:alert] = @task.errors.full_messages.to_sentence
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    if @task.update(task_params)
      # binding.pry
      redirect_to @pad, notice: 'Task was successfully updated.'
    else
      redirect_to @pad
      flash[:alert] = @task.errors.full_messages.to_sentence
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    redirect_to pad_tasks_path(@pad), notice: 'Task was successfully destroyed.'
  end

  private

    def set_pad
      # binding.pry
      @pad = Pad.find_by(id: params[:pad_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :complete, :created_by_id, :pad_id)
    end
end

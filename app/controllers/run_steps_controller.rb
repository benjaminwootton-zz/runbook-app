class RunStepsController < ApplicationController
  # GET /run_steps
  # GET /run_steps.json
  def index
    @run_steps = RunStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @run_steps }
    end
  end

  # GET /run_steps/1
  # GET /run_steps/1.json
  def show
    @run_step = RunStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @run_step }
    end
  end

  # GET /run_steps/new
  # GET /run_steps/new.json
  def new
    @run_step = RunStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run_step }
    end
  end

  # GET /run_steps/1/edit
  def edit
    @run_step = RunStep.find(params[:id])
  end

  # POST /run_steps
  # POST /run_steps.json
  def create
    @run_step = RunStep.new(params[:run_step])

    respond_to do |format|
      if @run_step.save
        format.html { redirect_to @run_step, notice: 'Run step was successfully created.' }
        format.json { render json: @run_step, status: :created, location: @run_step }
      else
        format.html { render action: "new" }
        format.json { render json: @run_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /run_steps/1
  # PUT /run_steps/1.json
  def update
    @run_step = RunStep.find(params[:id])

    respond_to do |format|
      if @run_step.update_attributes(params[:run_step])
        format.html { redirect_to @run_step, notice: 'Run step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @run_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_steps/1
  # DELETE /run_steps/1.json
  def destroy
    @run_step = RunStep.find(params[:id])
    @run_step.destroy

    respond_to do |format|
      format.html { redirect_to run_steps_url }
      format.json { head :no_content }
    end
  end
end

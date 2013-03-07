class StepValidationsController < ApplicationController
  # GET /step_validations
  # GET /step_validations.json
  def index
    @step_validations = StepValidation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @step_validations }
    end
  end

  # GET /step_validations/1
  # GET /step_validations/1.json
  def show
    @step_validation = StepValidation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step_validation }
    end
  end

  # GET /step_validations/new
  # GET /step_validations/new.json
  def new
    @step_validation = StepValidation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step_validation }
    end
  end

  # GET /step_validations/1/edit
  def edit
    @step_validation = StepValidation.find(params[:id])
  end

  # POST /step_validations
  # POST /step_validations.json
  def create
    @step_validation = StepValidation.new(params[:step_validation])

    respond_to do |format|
      if @step_validation.save
        format.html { redirect_to @step_validation, notice: 'Step validation was successfully created.' }
        format.json { render json: @step_validation, status: :created, location: @step_validation }
      else
        format.html { render action: "new" }
        format.json { render json: @step_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /step_validations/1
  # PUT /step_validations/1.json
  def update
    @step_validation = StepValidation.find(params[:id])

    respond_to do |format|
      if @step_validation.update_attributes(params[:step_validation])
        format.html { redirect_to @step_validation, notice: 'Step validation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_validations/1
  # DELETE /step_validations/1.json
  def destroy
    @step_validation = StepValidation.find(params[:id])
    @step_validation.destroy

    respond_to do |format|
      format.html { redirect_to step_validations_url }
      format.json { head :no_content }
    end
  end
end

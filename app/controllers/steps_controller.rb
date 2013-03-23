class StepsController < ApplicationController

  # GET /steps
  # GET /steps.json
  def index
    @steps = @book.steps.all unless @book.steps.nil

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steps }
    end
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = Step.find(params[:id])
    @runs = @step.book.runs.all
    @current_run = @step.book.runs.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @book = Book.find(params[:book_id])    
    @step = @book.steps.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step }
    end
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(params[:step])

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step.book, notice: 'Book step was successfully created.' }
       else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    @step = Step.find(params[:id])
    
    if !params[:step][:captured_output].nil?
      captured_output = params[:step][:captured_output]
      current_run = Run.first
      current_run.append_step_output captured_output 
    end

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to @step.book, notice: 'Book step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    
    respond_to do |format|
      format.html { redirect_to book_path(@step.book) }
      format.json { head :no_content }
    end
  end




  private 
 

end

class EvaluationsController < ApplicationController
  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluations }
    end
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/new
  # GET /evaluations/new.json
  def new
    @evaluation = Evaluation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/1/edit
  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @eval = Evaluation.find_by_user_and_video_id(params[:user], params[:video_id])
    @video = Video.find(params[:video_id])

    if !@eval.blank?
      if @eval.eval == 1
        @video.decrement!(:likes)
      else
        @video.decrement!(:dislikes)
      end

      @eval.destroy
    end

    @evaluation = Evaluation.new(
        :user => params[:user],
        :eval => params[:eval],
        :video_id => params[:video_id])
    @evaluation.save

    if @evaluation.eval == 1
      @video.increment!(:likes)
    else
      @video.increment!(:dislikes)
    end

    redirect_to @video
  end

  # PUT /evaluations/1
  # PUT /evaluations/1.json
  def update
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      if @evaluation.update_attributes(params[:evaluation])
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation = Evaluation.find(params[:id])
    @evaluation.destroy

    respond_to do |format|
      format.html { redirect_to evaluations_url }
      format.json { head :no_content }
    end
  end
end

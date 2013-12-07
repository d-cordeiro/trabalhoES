class EvaluationCommentsController < ApplicationController
  # GET /evaluation_comments
  # GET /evaluation_comments.json
  def index
    @evaluation_comments = EvaluationComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluation_comments }
    end
  end

  # GET /evaluation_comments/1
  # GET /evaluation_comments/1.json
  def show
    @evaluation_comment = EvaluationComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation_comment }
    end
  end

  # GET /evaluation_comments/new
  # GET /evaluation_comments/new.json
  def new
    @evaluation_comment = EvaluationComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation_comment }
    end
  end

  # GET /evaluation_comments/1/edit
  def edit
    @evaluation_comment = EvaluationComment.find(params[:id])
  end

  # POST /evaluation_comments
  # POST /evaluation_comments.json
  def create
    @eval = EvaluationComment.find_by_user_and_comment_id(params[:user], params[:comment_id])
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:comment_id])

    if !@eval.blank?
      if @eval.eval == 1
        @comment.decrement!(:likes)
      else
        @comment.decrement!(:dislikes)
      end

      @eval.destroy
    end

    @evaluation_comment = EvaluationComment.new(
        :user => params[:user],
        :eval => params[:eval],
        :comment_id => params[:comment_id],
        :video_id => params[:video_id])
    @evaluation_comment.save

    if @evaluation_comment.eval == 1
      @comment.increment!(:likes)
    else
      @comment.increment!(:dislikes)
    end

    redirect_to @video
  end

  # PUT /evaluation_comments/1
  # PUT /evaluation_comments/1.json
  def update
    @evaluation_comment = EvaluationComment.find(params[:id])

    respond_to do |format|
      if @evaluation_comment.update_attributes(params[:evaluation_comment])
        format.html { redirect_to @evaluation_comment, notice: 'Evaluation comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_comments/1
  # DELETE /evaluation_comments/1.json
  def destroy
    @evaluation_comment = EvaluationComment.find(params[:id])
    @evaluation_comment.destroy

    respond_to do |format|
      format.html { redirect_to evaluation_comments_url }
      format.json { head :no_content }
    end
  end
end

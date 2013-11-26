class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @video = Video.find(params[:video_id])

    if params[:comment].blank?
      flash[:error] = "Comentario nao adicionado. Inserir pelo menos um caracter."
      redirect_to @video
    else
      @comment = Comment.new(:comment => params[:comment], :video_id => params[:video_id], :dislikes => 0, :likes => 0)
      @comment.save
      redirect_to @video
    end

  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  def clike
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:comment_id])
    @comment.increment!(:likes)
    redirect_to @video
  end

  def cdislike
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:comment_id])
    @comment.increment!(:dislikes)
    redirect_to @video
  end
end

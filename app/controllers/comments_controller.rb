class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  # GET /comments
  def index
    params = comment_params
    if params.blank?
      @comments = Comment.all
      render json: @comments
    elsif params[:report]
      @comments = Comment.joins(:reports)
      render json: @comments
    else
      self.cria params
    end
  end

  # GET /comments/1
  def show
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end


  private

  # cria comentários
  def cria parametros
    @comment = Comment.new(parametros)
    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.permit(:text, :user_id, :event_id, :report)
    end
end

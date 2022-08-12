class PostCategoriesController < ApplicationController
  before_action :set_post_category, only: %i[ show update destroy ]

  # GET /post_categories
  def index
    @post_categories = PostCategory.all

    render json: @post_categories
  end

  # GET /post_categories/1
  def show
    render json: @post_category
  end

  # POST /post_categories
  def create
    @post_category = PostCategory.new(post_category_params)

    if @post_category.save
      render json: @post_category, status: :created, location: @post_category
    else
      render json: @post_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_categories/1
  def update
    if @post_category.update(post_category_params)
      render json: @post_category
    else
      render json: @post_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_categories/1
  def destroy
    @post_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_category
      @post_category = PostCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_category_params
      params.require(:post_category).permit(:post_id, :category_id)
    end
end

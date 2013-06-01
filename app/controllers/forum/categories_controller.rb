class Forum::CategoriesController < ApplicationController
  before_action :set_forum_category, only: [:show, :edit, :update, :destroy]

  # GET /forum/categories
  # GET /forum/categories.json
  def index
    @forum_categories = Forum::Category.all
  end

  # GET /forum/categories/1
  # GET /forum/categories/1.json
  def show
  end

  # GET /forum/categories/new
  def new
    @forum_category = Forum::Category.new
  end

  # GET /forum/categories/1/edit
  def edit
  end

  # POST /forum/categories
  # POST /forum/categories.json
  def create
    @forum_category = Forum::Category.new(forum_category_params)

    respond_to do |format|
      if @forum_category.save
        format.html { redirect_to @forum_category, notice: 'Category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @forum_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @forum_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forum/categories/1
  # PATCH/PUT /forum/categories/1.json
  def update
    respond_to do |format|
      if @forum_category.update(forum_category_params)
        format.html { redirect_to @forum_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @forum_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum/categories/1
  # DELETE /forum/categories/1.json
  def destroy
    @forum_category.destroy
    respond_to do |format|
      format.html { redirect_to forum_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_category
      @forum_category = Forum::Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_category_params
      params.require(:forum_category).permit(:name)
    end
end

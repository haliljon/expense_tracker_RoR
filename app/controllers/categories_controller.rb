class CategoriesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
        @categories = Category.where(user_id: current_user.id)
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        @category.user_id = current_user.id

        respond_to do |format|
            if @category.save
                format.html {redirect_to categories_path}
                format.json {render :show, status: :created, location: @category}
            else
                format.html {render :new, status: :unprocessable_entity}
                format.json {render json: @category.errors, status: :unprocessable_entity}
            end
        end
    end

    def show
    end

    private

    def category_params
        params.require(:category).permit(:name, :icon)
    end
end
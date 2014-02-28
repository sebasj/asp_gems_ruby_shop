class ProductsController < ApplicationController
    def new
    end
    
    def create
        @post = Product.new(post_params)
        @post.save
        redirect_to @post
    end

    def show
        @product = Product.find(params[:id])
    end
    
    def index
        @products = Product.all
    end

    
    private
        def post_params
            params.require(:post).permit(:name, :desc, :date_start, :maker, :stock)
        end
    
    
end

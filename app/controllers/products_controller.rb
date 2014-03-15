class ProductsController < ApplicationController
    def new
        @product = Product.new 
    end
    
    def create
        @product = Product.new(params.require(:product).permit(:name, :desc, :date_start, :maker, :stock, :category))
        if @product.save
            redirect_to @product
        else
            render 'new'
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(params.require(:product).permit(:name, :desc, :date_start, :maker, :stock, :category))
            redirect_to @product
        else
            render 'edit'
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy

        redirect_to products_path

    end

    def show
        @product = Product.find(params[:id])
    end
    
    def index
        @products = Product.all
    end

    
    private
        def post_params
            
        end
    
    
end

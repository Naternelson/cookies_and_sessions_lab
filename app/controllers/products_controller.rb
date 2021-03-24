class ProductsController <  ApplicationController
    def index
    end

    def add
        redirect '/'  unless params[:product]
        current_cart << params[:product] unless params[:product].blank?
        render 'index'
    end

        def current_cart 
            session[:cart] ||= []
        end

end
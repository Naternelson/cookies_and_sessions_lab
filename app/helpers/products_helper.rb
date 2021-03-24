module ProductsHelper
    def current_cart 
        session[:cart] ||= []
    end
end
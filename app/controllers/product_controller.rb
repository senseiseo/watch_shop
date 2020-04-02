class ProductController < ApplicationController
  
  

  def show
    @product = Product.find(params[:id])
    set_page_options
  end

  attr_accessor :product

  def set_page_options
    set_meta_tags product.slice(:title, :keywords, :description)
    add_breadcrumb name 'Home', path :root_path, title: 'Home'
  end

end

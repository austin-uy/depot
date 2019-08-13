require "kaminari"

class StoreController < ApplicationController
  skip_before_action :authenticate_user!
  include CurrentCart
  before_action :set_cart

  $current_page = 1

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title).page($current_page).per(3)
    end
  end

  def next_page
    $current_page += 1 if $current_page < Product.page(1).per(3).total_pages
    respond_to do |format|
      
    end
  end

  def prev_page
    $current_page -= 1 if $current_page > 1
    respond_to do |format|
      
    end
  end
end

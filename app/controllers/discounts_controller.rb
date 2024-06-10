# app/controllers/discounts_controller.rb
class DiscountsController < ApplicationController
  before_action :set_product

  def new
    @discount = @product.build_discount
  end

  def create
    @discount = @product.build_discount(discount_params)
    if @discount.save
      redirect_to @product, notice: 'Desconto criado com sucesso.'
    else
      render :new
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def discount_params
    params.require(:discount).permit(:discount_type, :discount_amount)
  end
end

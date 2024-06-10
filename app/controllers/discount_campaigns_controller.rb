# app/controllers/discount_campaigns_controller.rb
class DiscountCampaignsController < ApplicationController
  def index
    @discount_campaigns = DiscountCampaign.all
  end

  def show
    @discount_campaign = DiscountCampaign.find(params[:id])
  end

  def edit
    @discount_campaign = DiscountCampaign.find(params[:id])
  end

  def update
    @discount_campaign = DiscountCampaign.find(params[:id])
    if @discount_campaign.update(discount_campaign_params)
      redirect_to @discount_campaign, notice: 'Campanha de desconto atualizada com sucesso.'
    else
      render :edit
    end
  end

  private

  def discount_campaign_params
    params.require(:discount_campaign).permit(:product_id, :original_price, :discounted_price, :status)
  end
end

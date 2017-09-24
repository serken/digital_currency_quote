class QuoteController < ApplicationController
  def quote
    QuoteService.new(quote_params).perform
  end

  private
  def quote_params
    params.permit(:action, :base_currency, :quote_currency, :amount)
  end
end

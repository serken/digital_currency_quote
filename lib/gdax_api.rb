module GdaxApi

  GDAX_API_URL = 'https://api.gdax.com'
  ORDERS_URL = GDAX_API_URL + '/orders'

  def orders_by_currency_pair(base_currency, quote_currency)
    currency_pair = [base_currency, quote_currency].join('-')
    response = RestClient.get(ORDERS_URL, status: 'open', product_id: currency_pair)
    JSON.parse response
  end
end

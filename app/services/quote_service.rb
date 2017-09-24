class QuoteService
  include GdaxApi

  def initialize(args)
    @action = args[:action]
    @base_currency = args[:base_currency]
    @quote_currency = args[:quote_currency]
    @amount = args[:amount]
  end

  def perform
    self.public_send(@action)
  end

  def buy

  end

  def sell

  end
end

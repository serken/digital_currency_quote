Rails.application.routes.draw do
  post '/quote', to: 'quote#quote'
end

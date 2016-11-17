require('sinatra')
require('sinatra/reloader')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @result = params.fetch('change').coin_counter()
  erb(:change)
end

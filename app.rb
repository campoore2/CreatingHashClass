require('sinatra')
require('sinatra/reloader')
require('./lib/hash')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/hash') do
  @key1 = params.fetch('key1')
  @value1 = params.fetch('value1')
  @key2 = params.fetch('key2')
  @value2 = params.fetch('value2')
  @key3 = params.fetch('key3')
  @value3 = params.fetch('value3')
  @hashy = OurHash.new()
  @hashy.OurStore(@key1, @value1)
  @hashy.OurStore(@key2, @value2)
  @hashy.OurStore(@key3, @value3)
  erb(:hash)
end

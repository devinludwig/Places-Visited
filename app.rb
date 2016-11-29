require('sinatra')
require('sinatra/reloader')
require('./lib/place')
also_reload('lib/**/*.rb')

get('/') do
  @places = Place.all()
  erb(:index)
end

get('/form_places') do
  input = params.fetch('input_places')
  place = Place.new(input)
  place.save()
  erb(:result)
end

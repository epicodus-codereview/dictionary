require('sinatra')
require('sinatra/reloader')
require('./lib/dictionary')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @test_words = Word.all()
  erb(:words)
end

get('/words/new') do
  erb(:words_form)
end

post('/words') do
  get_post = params.fetch("dictionary")
  dictionary = Word.new(get_post).save()
  @test_words = Word.all()
  erb(:success)
end

get('/words/:id') do
  @word = Word.word_find(params.fetch("word_id"))
  erb(:word)
end

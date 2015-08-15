require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/dictionary')
require('./lib/definition')

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
  word = params.fetch('a_word')
  Word.new(word).save()
  @test_words = Word.all()
  erb(:success)
end

get('/definition/:id') do
  @definition = Definition.define_find(params.fetch('id').to_i())
  erb(:definition)
end

get('/words/:id') do
  @word = Word.word_find(params.fetch('id'))
  erb(:word)
end


end

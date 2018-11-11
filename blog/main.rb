require 'sinatra'

require './storage'
require './faq'

set :views, settings.root + '/templates'

client = Mongo::Client.new(['127.0.0.1'], database: 'blog')

storage = Storage.new(client)
faqs = FAQ.new(client)

# welcome page: static page
get '/' do
  questions = faqs.questions
  erb :welcome, locals: { faqs: questions }
end

get '/faq/{id}' do
  faq = faqs.find(params[:id])
  erb :faq, locals: { faq: faq }
end

# list of posts: page filled from storage (in-memory pseudo-db)
get '/posts' do
  posts = storage.all
  erb :list, locals: { posts: posts }
end

# страница одного поста. Берем из хранилища (почти-БД),
# искать его будем через id (идентификатор)
get '/posts/:id' do
  post = storage.find(params[:id])
  erb :post, locals: { post: post }
end

# страница формы создания поста. Именно она отправляет запрос
# в следующий обработчик (handler)
get '/create/posts' do
  erb :post_create
end

# обработчик запроса создания поста
post '/posts' do
  storage.create(params[:title], params[:text])
  redirect to('/posts')
end

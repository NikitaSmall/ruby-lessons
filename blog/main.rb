require 'sinatra'

require './storage'

set :views, settings.root + '/templates'

storage = Storage.new

# welcome page: static page
get '/' do
  erb :welcome
end

# list of posts: page filled from storage (in-memory pseudo-db)
get '/posts' do
  posts = storage.all
  erb :list, locals: { posts: posts }
end

# страница одного поста. Берем из хранилища (почти-БД),
# искать его будем через id (идентификатор)
get '/posts/:id' do
  post = storage.find(params[:id].to_i)
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

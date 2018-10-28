require 'sinatra'

set :views, settings.root + '/templates'

# welcome page: static page
get '/' do
  erb :welcome
end

# list of posts: page filled from storage (in-memory pseudo-db)
get '/posts' do
  posts = ['First post', 'Second post', 'Last post']
  erb :list, locals: { posts: posts }
end

# страница одного поста. Берем из хранилища (почти-БД),
# искать его будем через id (идентификатор)
get '/posts/:id' do
  post = { id: params[:id], title: "Post ##{params[:id]}", text: 'hello world' }
  erb :post, locals: { post: post }
end

# страница формы создания поста. Именно она отправляет запрос
# в следующий обработчик (handler)
get '/create/posts' do
  erb :post_create
end

# обработчик запроса создания поста
post '/posts' do
  redirect to('/posts')
end

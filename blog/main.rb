require 'sinatra'

set :views, settings.root + '/templates'

# welcome page: static page
get '/' do
  erb :welcome
end

# list of posts: page filled from storage (in-memory pseudo-db)
get '/posts' do
  erb :list
end

# страница одного поста. Берем из хранилища (почти-БД),
# искать его будем через id (идентификатор)
get '/posts/:id' do
  "post ##{params[:id]}"
end

# страница формы создания поста. Именно она отправляет запрос
# в следующий обработчик (handler)
get '/create/posts' do
  'create post form'
end

# обработчик запроса создания поста
post '/posts' do
  'created!'
end

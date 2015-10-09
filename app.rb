#config
require 'bundler'
Bundler.require()


#models
require './models/blog'


#***routes***

#read all
get '/' do
  @blogs = Blog.all
  erb :'index'
end

#form for creating
get '/new' do
  erb :'blogs/new'
end

#creat new blog post
post '/' do
  blog = Blog.create(params[:blog])
  redirect "/#{blog.id}"
end

#show individual
get '/:id' do
  @blog = Blog.find(params[:id])
  erb :'blogs/show'
end

#form for updating
get '/:id/edit' do
  @blog = Blog.find(params[:id])
  erb :'/blogs/edit'
end

#update blog post
put '/:id' do
  blog = Blog.find(params[:id])
  blog.update(params[:blog])
  redirect "/#{blog.id}"
end

#destroy
delete '/:id' do
  Blog.delete(params[:id])
  redirect '/'
end

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end

app/views/posts/new.html.erb
<h1>新規投稿ページ</h1>
<%= form_with url: "/posts", method: :post, local: true do |form| %>
  <%= form.text_field :context %>
  <%= form.submit '投稿する' %>
<% end %>

config/routes.rb

Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
end

app/controllers/posts_controller.rb

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.new(content: params[:content])
  end
end

text_fieldで指定した値がcontextになっているが、コントローラーで受け取っているパラメーターはparams[:content]であるため

Post.newでインスタンス（レコード）を生成しただけで保存していないため




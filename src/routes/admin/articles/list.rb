
require_relative '../../../lib/article/collection/article'

class DLite < Sinatra::Base

  get '/admin/articles' do

    collection = Lib::Article::Collection.new
    articles = collection.list

    locals = {
      title: 'Articles',
      articles: articles,
    }

    slim :'admin/articles/list', layout: :'layouts/admin', locals: locals
  end

end

class ArticlesController <ApplicationController
    def show
        @article = Article.find(params[:id])   
    end
    def index
        @articles = Article.all
    end
    def def new
    end
    end
    def def create
    end
end
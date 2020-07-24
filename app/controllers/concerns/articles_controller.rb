class ArticlesController <ApplicationController
    def show
        @article = Article.find(params[:id])   
    end

    def index
        @articles = Article.all
    end

    def edit
        @article = Article.find(params[:id])
    end
    
    def new
        @article =Article.new
    end

    def create
        @artilce = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to @article #article_path(@article)
        else 
            render 'new'
        
        end
    end

    def update
        @article = Aritcle.find(params[id])
        if @artice.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article was updated succesfully"
            redirect_to @article #Por que redirec 
        else 
            render 'edit'
        end
    end

    def destroy
        @article = Aritcle.find(params[id])
        @article.destroy
        redirect_to articles_path
    end


end
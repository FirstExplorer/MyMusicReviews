class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
  end
  
  def show
    @review = Review.find(params[:id])
  end
  
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @review.user = User.find(1)
    
    if @review.save
      
      flash[:success] = "Your review was created successfully"
      redirect_to reviews_path 
    else
      render :new
    end
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      
      flash[:success] = "Your review was updated successfully"
      redirect_to review_path(@review) 
    else
      render :edit
    end
  end

    private
    
    def review_params
      params.require(:review).permit(:name, :title, :description)
    end

end
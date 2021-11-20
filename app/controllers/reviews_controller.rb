class ReviewsController < ApplicationController
  before_action :current_director_must_be_review_director,
                only: %i[edit update destroy]

  before_action :set_review, only: %i[show edit update destroy]

  def index
    @q = Review.ransack(params[:q])
    @reviews = @q.result(distinct: true).includes(:movie, :director,
                                                  :user).page(params[:page]).per(10)
  end

  def show; end

  def new
    @review = Review.new
  end

  def edit; end

  def create
    @review = Review.new(review_params)

    if @review.save
      message = "Review was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @review, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to @review, notice: "Review was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    message = "Review was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to reviews_url, notice: message
    end
  end

  private

  def current_director_must_be_review_director
    set_review
    unless current_director == @review.director
      redirect_back fallback_location: root_path,
                    alert: "You are not authorized for that."
    end
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:stars, :review_text, :movie_id, :user_id,
                                   :director_id)
  end
end

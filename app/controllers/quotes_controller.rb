class QuotesController < ApplicationController
  def index
    @quotes = Quote.paginate(page: params[:page], per_page: 10, order: 'created_at DESC')
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def random
    redirect_to Quote.random
  end
end
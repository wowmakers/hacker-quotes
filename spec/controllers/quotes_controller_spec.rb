
require 'spec_helper'

describe QuotesController do
  context "GET index" do
    it "renders template index" do
      get :index
      response.should render_template :index
    end
  end

  context "GET show" do
    it "renders template show" do
      @quote = FactoryGirl.build(:quote)
      Quote.stub(:find).with("1").and_return(@quote)
      get :show , { id: "1" }
      response.should render_template :show
    end
  end

  context "GET random" do
    it "redirects to random quote" do
      quote = FactoryGirl.build :quote
      Quote.stub(:random).and_return(quote)
      get :random
      response.should redirect_to quote
    end
  end
end

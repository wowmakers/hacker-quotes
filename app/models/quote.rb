class Quote < ActiveRecord::Base
  attr_accessible :body, :author_name, :author_description
  validates :body, presence: true

  def previous
    Quote.where(["id < ?", id]).last
  end

  def next
    Quote.where(["id > ?", id]).first
  end 
end
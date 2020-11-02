class PagesController < ApplicationController
  def home
    @authors_num = Author.count
    @poems_num = Poem.count
  end
end

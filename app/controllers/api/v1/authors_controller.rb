class Api::V1::AuthorsController < Api::V1::BaseController
  before_action :set_author, only: :show

  def index
    @authors = Author.all
  end

  def show
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end
end

class Api::V1::PoemsController < Api::V1::BaseController
  before_action :set_poem, only: :show

  def index
    @poems = Poem.order(:id)
  end

  def show
  end

  private

  def set_poem
    @poem = Poem.find(params[:id])
  end
end

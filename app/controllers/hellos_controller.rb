class HellosController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Hello.all }
    end
  end

  def create
    render json: Hello.create(params.require(:hello).permit(:language, :greeting))
  end
end

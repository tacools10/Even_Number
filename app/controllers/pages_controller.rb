class PagesController < ApplicationController

  def home
  end

  def new
    @number = Number.new
  end

  def create
    @number = Number.create(number_params)
  end

  private

    def number_params
      params.require(:number).permit(:value)
    end

end

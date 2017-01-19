class PagesController < ApplicationController

  def home
  end

  def new
    @number = Number.new
  end

  def create
    @number = Number.new(number_params)
    if @number.valid?
      render(:partial => 'evens', locals: {number: @number})
    else
      render(:partial => 'error_message')
    end

  end

  private

    def number_params
      params.require(:number).permit(:value)
    end

end

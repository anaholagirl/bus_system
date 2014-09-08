class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "New Line Created!"
      redirect_to line_path(@line)
    else
      render 'new'
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(line_params)
      flash[:notice] = "Line has been updated!"
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

private
  def line_params
    params.require(:line).permit(:name)
  end
end

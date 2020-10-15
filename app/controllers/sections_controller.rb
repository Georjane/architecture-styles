class SectionsController < ApplicationController
  
  def index
    @sections = Section.all
  end
  
  def show
    @section = Section.find(params[:id])
  end
  
  def new
    @section = Section.new
  end
  
  def create
    @section = Section.new(section_params)
    @section.save
    
    redirect_to section_path(@section)
    # this is the path we will use wen we click on a category
  end
  
  private
  def section_params
    params.require(:section).permit(:name)
  end
  
end

class SectionsController < ApplicationController
  before_action :set_section, only: %i[show edit update destroy]

  def index
    @sections = Section.includes(:articles)
  end

  def show; end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    @section.save

    redirect_to section_path(@section)
  end

  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url, notice: 'section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_section
    @section = Section.find(params[:id])
  end

  def section_params
    params.require(:section).permit(:name, :priority)
  end
end

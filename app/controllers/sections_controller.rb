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
    
    respond_to do |format|
      if @section.save
        # log_in @section
        format.html { redirect_to @section, notice: 'section was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
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

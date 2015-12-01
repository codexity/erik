class Admin::PagesController < Admin::BaseController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :set_page_type, only: [:create, :edit, :update]

  def index
    @pages = Page.all
  end

  def show
  end

  def edit
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.page_type = params.fetch(:page_type)
    if @page.save
      redirect_to admin_pages_path, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @page.destroy
      redirect_to admin_pages_path, notice: 'Page was successfully destroyed.'
  end

  def update
      if @page.update(page_params)
        redirect_to admin_pages_path, notice: 'Page was successfully updated.'
      else
        render :edit
      end
  end

  private

    def page_params
      params.require(params.fetch(:page_type).underscore).permit(:title, :content)
    end

    def set_page
      @page = Page.find(params[:id])
    end
end

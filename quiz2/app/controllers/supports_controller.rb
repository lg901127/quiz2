class SupportsController < ApplicationController
  def index
    @support = Support.new
    # @supports = Support.order("created_at")
    @supports = Support.paginate(:page => params[:page], :per_page => 7)
  end

  def create
    support_params = params.require(:support).permit(:name, :email, :department, :message)
    @support = Support.new support_params
    @support.save
    redirect_to supports_path
  end

  def show
    @support = Support.find params[:id]
  end

  # def supports
  #   # @supports = Support.order("created_at")
  #   # @posts = Post.paginate(:page => params[:page], :per_page => 10)
  # end

  def edit
    @support = Support.find params[:id]
  end

  def update
    @support = Support.find params[:id]
    support_params = params.require(:support).permit(:name, :email, :department, :message)
    puts support_params
    @support.update support_params
    redirect_to supports_path
  end

  def mark
    @support = Support.find params[:id]
  end

  def done_undone
    @support = Support.find params[:id]
    support_params = params.require(:support).permit(:done_undone)
    @support.update support_params
    redirect_to supports_path
  end

  def destroy
    @support = Support.find params[:id]
    @support.destroy
    redirect_to supports_path
  end

  def search
    if params[:search]
      @supports = Support.all.search(params[:search][0]).paginate(:page => params[:page], :per_page => 7)
    else
      @supports = Support.paginate(:page => params[:page], :per_page => 7)
    end
  end
end

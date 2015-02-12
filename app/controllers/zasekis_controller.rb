class ZasekisController < ApplicationController
  before_action :set_zaseki, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @zasekis = Zaseki.all
    respond_with(@zasekis)
  end

  def show
    respond_with(@zaseki)
  end

  def new
    @zaseki = Zaseki.new
    respond_with(@zaseki)
  end

  def edit
  end

  def create
    @zaseki = Zaseki.new(zaseki_params)
    @zaseki.save
    respond_with(@zaseki)
  end

  def update
    @zaseki.update(zaseki_params)
    respond_with(@zaseki)
  end

  def destroy
    @zaseki.destroy
    respond_with(@zaseki)
  end

  private
    def set_zaseki
      @zaseki = Zaseki.find(params[:id])
    end

    def zaseki_params
      params.require(:zaseki).permit(:name, :address)
    end
end

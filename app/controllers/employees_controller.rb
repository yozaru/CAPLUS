class EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  respond_to :html

#layout/kanri.html.erbを使用するアクション指定
  layout "kanri", :only => [:kanri, :kanri_search]

  def index
#    @employees = Employee.all
    @employees = Employee.page(params[:page]).per(20).order(:id)
    respond_with(@employees)
  end
  
  def kanri
     @employees = Employee.all.page(params[:page]).per(20).order(:id)
     respond_with(@employees) 
  end
  
  def show
    respond_with(@employee)
  end

   def search
      @employees = Employee.search_names_or(params[:stxt])
   end

   def kanri_search
      @employees = Employee.search_names_or(params[:stxt])
      render :kanri
   end

  def new
    @employee = Employee.new
    respond_with(@employee)
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    respond_with(@employee)
#      ChatWork.api_key = "66496d47070398f1824d380bbebbcdfe"
#      ChatWork::Message.create(room_id: 5565940, body: "新しい従業員が追加されました! プロフィール写真はご自身で設定可能ですhttp://1717.applibot.co.jp/")
  end

  def update
    @employee.update(employee_params)
    respond_with(@employee)
  end

  def destroy
    @employee.destroy
#    respond_with(@employee)
#    render kanri
   redirect_to :action => "kanri" 
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:name, :zaseki, :about, :job, :project, :pc, :notepc, :shumi, :game, :furigana, :mail, :jico, :nyusha, :koyo, :kingaku, :itaku, :image, :image_cache, :remove_image)
    end

end

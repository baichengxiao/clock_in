class TimesheetsController < ApplicationController
  def index
    @timesheets=Timesheet.all
  end

  def show
  end

  def new
    @timesheet=Timesheet.new
  end

  def create
    @timesheet=Timesheet.new timesheet_params
    @timesheet.week_number=@timesheet.date.cweek
    if @timesheet.save
      flash[:notice]="Timesheet has been created successfully"
      redirect_to timesheets_path
    else
      flash.now[:notice]="Timesheet creation failed: #{@timesheet.errors.full_messages}"
      render 'new'
    end
  end

  def update

  end

  def edit
  end


  def delete
  end

  def destroy

  end

  private
  def timesheet_params
    params.require(:timesheet).permit(:user_id,:week_number,:date,:hour)

  end
end

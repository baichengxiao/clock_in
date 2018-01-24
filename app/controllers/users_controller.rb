class UsersController < ApplicationController
  def index
    @users=User.by_role.sorted
  end

  def show
    @user=User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new user_params
    if @user.save
      redirect_to user_path(@user)
      flash[:notice]="User has been created successfully"

    else
      flash.now[:notice]="User creation failed: #{@user.errors.full_messages}"
      render 'new'
    end

  end


  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes user_params
      redirect_to user_path(@user)
      flash[:notice]="User has been updated successfully"
    else
      flash.now[:notice]="User update failed: #{@user.errors.full_messages}"
      render 'edit'
    end
  end

  def delete
    @user=User.find(params[:id])
  end

  def destroy
    @user=User.find(params[:id])
    if @user.destroy
      redirect_to users_path
      flash[:notice]="User has been deleted successfully"
    else
      flash.now[:notice]="User deletion failed: #{@user.errors.full_messages}"
      render 'delete'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:email,:password,:role)
  end
end

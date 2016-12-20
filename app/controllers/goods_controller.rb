class GoodsController < ApplicationController
  before_action :find_good, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

def index
  if params[:category].blank?
  @goods = Good.all.order ("created_at DESC")
  else
    @category_id = Category.find_by(name: params[:category]).id
    @goods = Good.where(:category_id => @category_id).order ("created_at DESC")
    end
end

  def show
  end

  def new
    @good = current_user.goods.build
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def create
    @good = current_user.goods.build(good_params)
    @good.category_id = params[:category_id]

    if @good.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def update
    @categories = Category.all.map{ |c| [c.name, c.id] }
    if @good.update(good_params)
      redirect_to good_path(@good)
    else
      render 'edit'
    end
  end

  def destroy
    @good.destroy
    redirect_to root_path
  end

  private
def good_params
  params.require(:good).permit(:title, :description, :other, :category_id, :good_img)
end


def find_good
  @good = Good.find(params[:id])
end

end


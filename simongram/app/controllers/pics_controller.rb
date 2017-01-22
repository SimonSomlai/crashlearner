# frozen_string_literal: true
class PicsController < ApplicationController
  before_action :find_pic, except: [:index, :new, :create]

  def index
    @pics = Pic.all.order('created_at DESC')
  end

  def new
    @pic = current_user.pics.build
  end

  def create
    @pic = current_user.pics.build(pic_params)
    if @pic.save
      redirect_to pic_path(@pic), notice: 'Post succesfull!'
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @pic.update(pic_params)
      redirect_to @pic
    else
      render 'edit', notice: 'Something went wrong :/'
    end
  end

  def destroy
    if @pic.destroy
      redirect_to pics_path
    else
      render "show", notice: 'Something went wrong :/'
    end
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end

  def find_pic
    @pic = Pic.find(params[:id])
  end
end

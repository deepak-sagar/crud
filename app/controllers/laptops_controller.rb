class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end
  def new
    @laptop = Laptop.new
  end
  def create
    @laptop = Laptop.new(params[:laptop])
    if
      @laptop.save
      redirect_to :action => 'show', :id=>@laptop.id
    else 
      render 'new'
    end
  end
  def show
    @laptop = Laptop.find(params[:id])
  end
  def edit
    @laptop = Laptop.find(params[:id])
  end
  def update
    @laptop = Laptop.find(params[:id])
    @laptop.update_attributes(params[:laptop])
     @laptop.save
     redirect_to :action => 'show'
  end
  def delete
    @laptop = Laptop.find(params[:id])
    @laptop.delete
    redirect_to :action => 'index'
  end
end

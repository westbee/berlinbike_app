class OrdersController < ApplicationController

  before_filter :authenticate_user!
  before_action :authenticate_user!, :except => [:show, :index]
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end
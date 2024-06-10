class HomesController < ApplicationController
  def top
    service = HelloSalutService.new('ja')
    @greeting = service.greeting
  end

  def new
  end

  def index

  end

  def show
  end

  def edit
  end
end

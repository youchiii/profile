# app/controllers/greetings_controller.rb
class GreetingsController < ApplicationController
  def show
    service = HelloSalutService.new('ja')
    @greeting = service.greeting
  end
end

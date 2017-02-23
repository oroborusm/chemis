class HogarController < ApplicationController
  def index
    @contact = Contact.new
  end
end

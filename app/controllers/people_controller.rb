class PeopleController < ApplicationController
  before_filter :authenticate_person!

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end
end

class PeopleController < ApplicationController
  before_filter :authenticate_person!, except: [:index, :show]

  helper_method :person

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def person
    @person
  end
end

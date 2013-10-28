class EndorsesController < ApplicationController
  before_filter :authenticate_person!

  def new
    person = Person.find(params[:person_id])
    skill = SkillMapping.find(params[skill_id])
    @endorse = Endorse.new({endorsee: person, endorsor: current_user,
                             skill: skill})
  end

  def create

  end
end

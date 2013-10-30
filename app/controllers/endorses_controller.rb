class EndorsesController < ApplicationController
  before_filter :authenticate_person!

  def new
    person = Person.find(params[:person_id])

    if person == current_person
      redirect_to person_path(person)
    end

    skill = SkillMapping.find(params[:skill_id])
    @endorse = Endorse.new({endorsee: person, skill_mapping: skill})

    puts "HERE"
    puts @endorse.inspect
  end

  def create
    @endorse = Endorse.where("endorsee_id = ? AND endorsor_id = ? AND skill_mapping_id = ?",
                             params[:endorse][:endorsee_id],
                             current_person.id,
                             params[:endorse][:skill_mapping_id]).first

    puts @endorse.inspect

    if @endorse.nil?
      @endorse = Endorse.new(params.require(:endorse).permit(:level, :endorsee_id, :skill_mapping_id))
      @endorse.endorsor = current_person
    else
      @endorse.level = params[:endorse][:level]
    end


    puts @endorse.errors.messages

    @endorse.save
    redirect_to person_path(@endorse.endorsee)
  end
end

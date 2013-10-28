class AddSkillToEndorse < ActiveRecord::Migration
  def change
    add_column :endorses, :skill, :integer
  end
end

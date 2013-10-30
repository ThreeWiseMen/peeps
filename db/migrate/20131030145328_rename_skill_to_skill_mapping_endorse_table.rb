class RenameSkillToSkillMappingEndorseTable < ActiveRecord::Migration
  def change
    rename_column :endorses, :skill, :skill_mapping_id
  end
end

class RenameTypeToKindInSkillMapping < ActiveRecord::Migration
  def change
    change_table :skill_mappings do |t|
      t.rename :type, :kind
    end
  end
end

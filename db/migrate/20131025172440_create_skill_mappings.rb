class CreateSkillMappings < ActiveRecord::Migration
  def change
    create_table :skill_mappings do |t|
      t.references :skill
      t.references :person
      t.string :type

      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all
Skill.delete_all

justin = Person.create({first_name: 'Justin', last_name: 'Wood',
                         email: 'woodjk@threewisemen.ca', password: 'something'})

cpp = Skill.create(name: 'C++')
haskell = Skill.create(name: 'Haskell')

SkillMapping.create(person: justin, skill: haskell, kind: :learn)
SkillMapping.create(person: justin, skill: cpp, kind: :love)

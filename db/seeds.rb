# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all
Skill.delete_all

# Let's set up some skills...
cpp = Skill.create(name: 'C++')
php = Skill.create(name: 'PHP')
haskell = Skill.create(name: 'Haskell')
ruby = Skill.create(name: 'Ruby')
java = Skill.create(name: 'Java')
csharp = Skill.create(name: 'C#')
clojure = Skill.create(name: 'clojure')

justin = Person.create({first_name: 'Justin', last_name: 'Wood',
                        email: 'woodjk@threewisemen.ca', password: 'something'})

SkillMapping.create(person: justin, skill: haskell, kind: :learn)
SkillMapping.create(person: justin, skill: cpp, kind: :love)
SkillMapping.create(person: justin, skill: php, kind: :loathe)

stacey = Person.create({first_name: 'Stacey', last_name: 'Vetzal',
                        email: 'stacey@mojility.ca', password: 'something'})

SkillMapping.create(person: stacey, skill: cpp, kind: :love)
SkillMapping.create(person: stacey, skill: ruby, kind: :love)
SkillMapping.create(person: stacey, skill: haskell, kind: :learn)
SkillMapping.create(person: stacey, skill: clojure, kind: :learn)
SkillMapping.create(person: stacey, skill: java, kind: :loathe)
SkillMapping.create(person: stacey, skill: csharp, kind: :loathe)

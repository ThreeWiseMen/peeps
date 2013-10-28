# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all
Skill.delete_all

### Let's set up some skills...
#
# Languages
#
programming = Skill.create(name: 'Programming')
  cpp = Skill.create(parent: programming, name: 'C++')
  php = Skill.create(parent: programming, name: 'PHP')
  haskell = Skill.create(parent: programming, name: 'Haskell')
  ruby = Skill.create(parent: programming, name: 'Ruby')
  java = Skill.create(parent: programming, name: 'Java')
  csharp = Skill.create(parent: programming, name: 'C#')
  clojure = Skill.create(parent: programming, name: 'Clojure')
  js = Skill.create(parent: programming, name: 'Javascript')
  webservices = Skill.create(parent: programming, name: 'Web Services')
    json = Skill.create(parent: webservices, name: 'JSON')
    wsdl = Skill.create(parent: webservices,name: "WSDL")
  xml = Skill.create(parent: programming, name: 'XML') # tags, namespaces, dublin-core, rss, atom
    xslt = Skill.create(parent: xml, name: 'XSLT')
    namespaces = Skill.create(parent: xml, name: 'Namespaces')
      dublincore = Skill.create(parent: namespaces, name: 'Dublin Core')
      rss = Skill.create(parent: namespaces, name: 'Namespaces')
      atom = Skill.create(parent: namespaces, name: 'Namespaces')
#
# Design
#
design = Skill.create(name: 'Design')
  html5 = Skill.create(parent: design, name: 'HTML5')
  xhtml = Skill.create(parent: design, name: 'XHTML')
  css = Skill.create(parent: design, name: 'CSS')

justin = Person.create({first_name: 'Justin', last_name: 'Wood',
                        email: 'woodjk@threewisemen.ca', password: 'something'})

SkillMapping.create(person: justin, skill: haskell, kind: :learn)
SkillMapping.create(person: justin, skill: cpp, kind: :love)
SkillMapping.create(person: justin, skill: php, kind: :loathe)

stacey = Person.create({first_name: 'Stacey', last_name: 'Vetzal',
                        email: 'stacey@mojility.ca', password: 'something'})

SkillMapping.create(person: stacey, skill: programming, kind: :love)
  SkillMapping.create(person: stacey, skill: cpp, kind: :love)
  SkillMapping.create(person: stacey, skill: ruby, kind: :love)
  SkillMapping.create(person: stacey, skill: haskell, kind: :learn)
  SkillMapping.create(person: stacey, skill: clojure, kind: :learn)
  SkillMapping.create(person: stacey, skill: java, kind: :loathe)
  SkillMapping.create(person: stacey, skill: csharp, kind: :loathe)

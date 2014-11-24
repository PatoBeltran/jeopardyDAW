# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Semester.create(title: "Ene-Mayo 2014")
Semester.create(title: "Ago-Dic 2014")
Semester.create(title: "Ene-Mayo 2015")
Semester.create(title: "Ago-Dic 2015")
Semester.create(title: "Ene-Mayo 2016")
Semester.create(title: "Ago-Dic 2016")

m = Topic.create(name: "Math")
cs = Topic.create(name: "Computer Science")
h = Topic.create(name: "Mexican History")
f = Topic.create(name: "Physics")
q = Topic.create(name: "Chemestry")
b = Topic.create(name: "Biology")
k = Topic.create(name: "Kindergarden")
n = Topic.create(name: "Christmas")

a = Category.create(name: "Algebra", topic: m)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Simple Math", topic: m)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Calculus", topic: m)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Trigonometry", topic: m)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Networks", topic: cs)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Algorithms", topic: cs)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Databases", topic: cs)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Operative Systems", topic: cs)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "People", topic: h)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Dates", topic: h)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Fun Facts", topic: h)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Pre Hispanic", topic: h)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Relativity", topic: f)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Elementary Physics", topic: f)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Quantum Physics", topic: f)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Weird Stuff", topic: f)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Reactions", topic: q)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Formulas", topic: q)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Periodic Table", topic: q)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Ions", topic: q)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Plants", topic: b)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Processes", topic: b)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Something", topic: b)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Food", topic: b)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Shapes", topic: k)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Numbers", topic: k)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Colors", topic: k)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Tools", topic: k)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Dates", topic: n)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Presents", topic: n)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Happiness", topic: n)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)

a = Category.create(name: "Characters", topic: n)
e = Clue.create(title: "Clue 1", points: 500, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 2", points: 400, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 3", points: 300, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 4", points: 200, category: a)
Question.create(title: "Yes", clue: e)
e = Clue.create(title: "Clue 5", points: 100, category: a)
Question.create(title: "Yes", clue: e)


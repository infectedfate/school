# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([
  {name: "Tetya Klava", email: "klavaklava@nudeklava.com"}
  ])

groups = Group.new([
  {character: "A", number: 1}
  ])

students = Student.new([
  {name: "Vasya Pupkin", email: "pupkin@vasya.ru", parent_name: "Papa Vasi", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Lena Golovach", email: "lena@lena.ru", parent_name: "Papa Lenki", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Petia Petin", email: "p@lena.ru", parent_name: "Papa Petki", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Sahsa Sashin", email: "s@lena.ru", parent_name: "Papa Saski", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Kirill Kirillov", email: "k@mail.ru", parent_name: "Papa Kirki", group_id: groups[0].id, teacher_id: teachers[0].id}
  ])
subjects = Subject.new([
  {name: "math", perfomance_id: perfomances[0].id},
  {name: "russian", perfomance_id: perfomances[0].id},
  {name: "english", perfomance_id: perfomances[0].id},
  {name: "programming", perfomance_id: perfomances[0].id},
  {name: "world", perfomance_id: perfomances[0].id}
  ])
perfomances = Perfomance.new([
  {student_id: students[0].id, mark: 3},
  {student_id: students[0].id, mark: 3},
  {student_id: students[0].id, mark: 3},
  {student_id: students[1].id, mark: 5},
  {student_id: students[1].id, mark: 5},
  {student_id: students[1].id, mark: 5},
  {student_id: students[2].id, mark: 4},
  {student_id: students[2].id, mark: 4},
  {student_id: students[2].id, mark: 4},
  {student_id: students[3].id, mark: 2},
  {student_id: students[3].id, mark: 3},
  {student_id: students[3].id, mark: 2},
  {student_id: students[4].id, mark: 3},
  {student_id: students[4].id, mark: 3},
  {student_id: students[4].id, mark: 2}
  ])

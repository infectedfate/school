# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([
  {name: "Petr Aleksandrovich", email: "klavaklava@klava.com", password: "asdawawds", password_confirmation: "asdawawds"}
  ])

groups = Group.create([
  {character: "A", number: 1}
  ])

students = Student.create([
  {name: "Vasya Pupkin", email: "pupkin@vasya.ru", parent_name: "Papa Vasi", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Lena Lena", email: "lena@lena.ru", parent_name: "Papa", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Petia Petin", email: "p@mail.ru", parent_name: "Papa", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Sahsa Sashin", email: "s@mail.ru", parent_name: "Mama", group_id: groups[0].id, teacher_id: teachers[0].id},
  {name: "Kirill Kirillov", email: "k@mail.ru", parent_name: "Papa", group_id: groups[0].id, teacher_id: teachers[0].id}
  ])

subjects = Subject.create([
  {name: "math"},
  {name: "russian"},
  {name: "english"},
  {name: "programming"},
  {name: "world"}
])
perfomances = Perfomance.create([
  {student_id: students[0].id, mark: 3, subject_id: subjects[0].id},
  {student_id: students[0].id, mark: 3, subject_id: subjects[2].id},
  {student_id: students[0].id, mark: 3, subject_id: subjects[0].id},
  {student_id: students[1].id, mark: 5, subject_id: subjects[2].id},
  {student_id: students[1].id, mark: 5, subject_id: subjects[1].id},
  {student_id: students[1].id, mark: 5, subject_id: subjects[3].id},
  {student_id: students[2].id, mark: 4, subject_id: subjects[4].id},
  {student_id: students[2].id, mark: 4, subject_id: subjects[0].id},
  {student_id: students[2].id, mark: 4, subject_id: subjects[1].id},
  {student_id: students[3].id, mark: 2, subject_id: subjects[2].id},
  {student_id: students[3].id, mark: 3, subject_id: subjects[0].id},
  {student_id: students[3].id, mark: 2, subject_id: subjects[3].id},
  {student_id: students[4].id, mark: 3, subject_id: subjects[4].id},
  {student_id: students[4].id, mark: 3, subject_id: subjects[1].id},
  {student_id: students[4].id, mark: 2, subject_id: subjects[0].id}
  ])

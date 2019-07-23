# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SUBJECTS = %w[math programming world russian english]

teachers = Teacher.create([
  {name: "Petr Aleksandrovich", email: "klavaklava@klava.com", password: "asdawawds", password_confirmation: "asdawawds"}
  ])

groups = Group.create([
  {character: "A", number: 1}
  ])

students = Student.create([
  {name: "Vasya Pupkin", parent_email: "pupkin@vasya.ru", parent_name: "Papa Vasi", group_id: groups.first.id, teacher_id: teachers.first.id},
  {name: "Lena Lena", parent_email: "lena@lena.ru", parent_name: "Papa", group_id: groups.first.id, teacher_id: teachers.first.id},
  {name: "Petia Petin", parent_email: "p@mail.ru", parent_name: "Papa", group_id: groups.first.id, teacher_id: teachers.first.id},
  {name: "Sahsa Sashin", parent_email: "s@mail.ru", parent_name: "Mama", group_id: groups.first.id, teacher_id: teachers.first.id},
  {name: "Kirill Kirillov", parent_email: "k@mail.ru", parent_name: "Papa", group_id: groups.first.id, teacher_id: teachers.first.id}
  ])

subjects = SUBJECTS.each { |e| Subject.create(name: e) }

perfomances = Perfomance.create([
  {student_id: students.first.id, mark: 3, subject_id: Subject.first.id},
  {student_id: students.first.id, mark: 3, subject_id: Subject.third.id},
  {student_id: students.first.id, mark: 3, subject_id: Subject.first.id},
  {student_id: students.second.id, mark: 5, subject_id: Subject.third.id},
  {student_id: students.second.id, mark: 5, subject_id: Subject.second.id}
  ])

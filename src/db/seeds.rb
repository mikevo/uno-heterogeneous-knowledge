# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TODO: change email address
User.create(username: 'admin', email: 'admin@example.com', password: 'admin', password_confirmation: 'admin',role: 'admin')
# teacher = User.create(username: 'teacher', email: 'teacher@example.com', password: 'teacher', password_confirmation: 'teacher', role: 'teacher')
#
# course = Course.create! name: "Computer Course", teacher_id: teacher.id
# Quiz.create! title: "Computer Science ", course_id: course.id

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: 'Principal')
Role.create(name: 'Student')
Role.create(name: 'Teacher')
Role.create(name: 'Outsider')
Examtype.create(name: 'Sessional')
Examtype.create(name: 'First Internal')
Examtype.create(name: 'Second Internal')
Gender.create(name: 'Male')
Gender.create(name: 'Female')
Gender.create(name: 'Other')
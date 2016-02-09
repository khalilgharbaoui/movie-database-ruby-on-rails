# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actor.destroy_all
Actor.create([

               { name: 'Al Pachino', birth_date: Date.parse('1962-09-24') },
               { name: 'Robert Di Nero', birth_date: Date.parse('1960-09-24') },
               { name: 'Marlon Brandon', birth_date: Date.parse('1950-09-24') },
               { name: 'Michel Pfiffer', birth_date: Date.parse('1965-09-24') }

             ])

Genre.destroy_all
Genre.create([
               { name: 'Action' },
               { name: 'Comedy' },
               { name: 'Drama' }

             ])

Director.destroy_all

spielberg = Director.create([  { first_name: 'Steven', last_name: 'Spielberg', country: 'US' }])
palma = Director.create([  { first_name: 'Brian', last_name: 'De Palma', country: 'US' }])
trantino = Director.create([{ first_name: 'Quintin', last_name: 'Tarantino', country: 'ME' }])

                ])

Movie.destroy_all
heat1 = Movie.create([
               {
                 title: 'Heat',
                 plot: 'Bank robbery, Bloody and cool',
                 country: 'US'
                 picture: "http://webtotally.com/codaisseur.png"
                 release_date Date.parse("1998-10-4"),
                 duration: 280,
                 director: tarantino.id
                 }])
      heat2 = Movie.create([   {
                 title: 'Heat 2',
                 plot: 'Bank robbery, Bloody and cool',
                 country: 'US'
                 picture: "http://webtotally.com/codaisseur.png"
                 release_date Date.parse("1995-10-4"),
                 duration: 280,
                 director: palma.id
                 }])
  heat2 = Movie.create([   {
                 title: 'Heat 3',
                 plot: 'Bank robbery, Bloody and cool',
                 country: 'US'
                 picture: "http://webtotally.com/codaisseur.png"
                 release_date: Date.parse("1990-10-4"),
                 duration: 280,
                 director: tarantino.id
                 
               }])
Role.destroy_all
Role.create([{name: "Bad guy", actor: "Al Pachino", movie: heat1 }])
Role.create([{name: "Bad guy", actor: "someone", movie: heat2 }])
Role.create([{name: "Bad guy", actor: "someone", movie: heat3 }])

heat1.genre << comedy
heat2.genre << comedy
heat3.genre << comedy

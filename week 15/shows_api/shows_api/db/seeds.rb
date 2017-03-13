Show.delete_all()

Show.create({
  title: "Family guy",
  series: 15,
  description: "Family Guy is an American adult animated sitcom created by Seth MacFarlane for the Fox Broadcasting Company.",
  image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNGRkMTllZTUtZTQyYi00NjVlLTlhZjEtODExNjQ4YjQ1Y2RjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY268_CR0,0,182,268_AL_.jpg",
  programmeID: 1
  })



Show.create({
  title: "American dad",
  series: 12,
  description: "American Dad! is an American adult animated sitcom created by Seth MacFarlane, Mike Barker, and Matt Weitzman for the Fox Broadcasting Company. American Dad! is the first television series to have its inception on Animation Domination.",
  image: "http://i.cdn.turner.com/v5cache/TBS/Images/Dynamic/i449/vizio-american-dad-960x1440.png",
  programmeID: 2
  })# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

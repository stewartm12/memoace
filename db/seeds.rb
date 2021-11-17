# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = Post.create([
  {
    description: "Coding is taking all away my black hair",
    author: "tester1"
  },
  {
    description: "Give me a break",
    author: "tester2"
  },
  {
    description: "I hate homework",
    author: "tester3"
  },
  {
    description: "Pay attention to me",
    author: "tester4"
  },
  {
    description: "Welcome to chilli's",
    author: "tester5"
  }
])

comments = Comment.create([
  {
    description: "Thats a fact",
    author: "commenter1",
    post_id: posts.first.id
  },
  {
    description: "NEVAAAAAA!!!!!!",
    author: "commenter2",
    post_id: posts.second.id
  },
  {
    description: "No one likes hw ;-;",
    author: "commenter3",
    post_id: posts.third.id
  },
  {
    description: "LMAOOOOOO what a vine",
    author: "commenter4",
    post_id: posts.last.id
  },
])
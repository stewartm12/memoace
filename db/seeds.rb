# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Like.destroy_all
Post.destroy_all
User.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('comments')
ApplicationRecord.connection.reset_pk_sequence!('likes')
ApplicationRecord.connection.reset_pk_sequence!('posts')
ApplicationRecord.connection.reset_pk_sequence!('users')

users = User.create!([
  {
    email: "test1@test.com",
    username: "tester6",
    password: "password"
  },
  {
    email: "test2@test.com",
    username: "tester2",
    password: "password"
  },
  {
    email: "test3@test.com",
    username: "tester3",
    password: "password"
  },
  {
    email: "test4@test.com",
    username: "tester4",
    password: "password"
  },
  {
    email: "test5@test.com",
    username: "tester5",
    password: "password"
  }
])

posts = Post.create!([
  {
    description: "Coding is taking all away my black hair",
    user_id: 1
  },
  {
    description: "Give me a break",
    user_id: 2
  },
  {
    description: "I hate homework",
    user_id: 3
  },
  {
    description: "Pay attention to me",
    user_id: 4
  },
  {
    description: "Welcome to chilli's",
    user_id: 5
  }
])

comments = Comment.create!([
  {
    description: "Thats a fact",
    user_id: 1,
    post_id: posts.first.id
  },
  {
    description: "NEVAAAAAA!!!!!!",
    user_id: 2,
    post_id: posts.second.id
  },
  {
    description: "No one likes hw ;-;",
    user_id: 3,
    post_id: posts.third.id
  },
  {
    description: "LMAOOOOOO what a vine",
    user_id: 4,
    post_id: posts.last.id
  },
])

likes = Like.create!([
  {
    liked_type_type: "Comment",
    liked_type_id: 1,
    user_id: 1
  },
  {
    liked_type_type: "Comment",
    liked_type_id: 2,
    user_id: 2
  },
  {
    liked_type_type: "Comment",
    liked_type_id: 3,
    user_id: 2
  },
  {
    liked_type_type: "Comment",
    liked_type_id: 4,
    user_id: 3
  },
  {
    liked_type_type: "Post",
    liked_type_id: 1,
    user_id: 3
  },
  {
    liked_type_type: "Post",
    liked_type_id: 2,
    user_id: 4
  },
  {
    liked_type_type: "Post",
    liked_type_id: 3,
    user_id: 4
  },
  {
    liked_type_type: "Post",
    liked_type_id: 4,
    user_id: 1
  }
])
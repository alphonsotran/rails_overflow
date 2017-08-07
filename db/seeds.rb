Comment.destroy_all
Vote.destroy_all
Answer.destroy_all
Question.destroy_all
User.destroy_all

#User seeds

User.create!({email:"test@test.com", hash_password:"password", username: "tester"})

19.times do
  User.create!({
    email: Faker::Internet.safe_email,
    username: Faker::Internet.user_name,
    hash_password: "password"
    })
end

#Question seeds
40.times do
  Question.create!({
    user_id: User.all.sample.id,
    title: Faker::Hipster.sentence,
    body: Faker::Hipster.paragraph
    })
end

#Answer seeds
60.times do
  Answer.create({
    user_id: User.all.sample.id,
    question_id: Question.all.sample.id,
    body: Faker::Hipster.paragraph
    })
end

#Comment seeds
30.times do
  Comment.create!({
    user_id: User.all.sample.id,
    commenteable_id: Answer.all.sample.id,
    body: Faker::Hipster.paragraph,
    commenteable_type: "Answer"
    })

  Comment.create!({
    user_id: User.all.sample.id,
    commenteable_id: Question.all.sample.id,
    body: Faker::Hipster.paragraph,
    commenteable_type: "Question"
    })
end

#Vote seeds
60.times do
  Vote.create!({
    user_id: User.all.sample.id,
    voteable_id: Answer.all.sample.id,
    voteable_type: "Answer"
    })

  Vote.create!({
    user_id: User.all.sample.id,
    voteable_id: Question.all.sample.id,
    voteable_type: "Question"
    })

  Vote.create!({
    user_id: User.all.sample.id,
    voteable_id: Comment.all.sample.id,
    voteable_type: "Comment"
    })

end

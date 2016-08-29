  require 'random_data'

  5.times do
    User.create!(
        email: RandomData.random_email,
        encrypted_password: 'njcdjndnjdjn',
        password: 'jibbsdjcjncnj'
    )
  end

  users = User.all

  20.times do
    Category.create!(
        body: RandomData.random_sentence
    )

  end

  categories = Category.all

  100.times do
    Workout.create!(

      name: RandomData.random_sentence,
      sets: RandomData.random_number,
      reps: RandomData.random_number,
      duration: RandomData.random_number,
      description: RandomData.random_paragraph,
      user_id: users.sample,
      category_id: categories.sample


    )
  end

  puts "Categories finished"
  puts "#{Category.count} categories created"
  puts "#{Workout.count} workouts created"

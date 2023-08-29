50.times do |index|
  book = Book.create(
    author:   Faker::Name.name,
    overview: Faker::Lorem.paragraph(sentence_count: 20)
  )
  puts "#{book.author} with id #{index.next} created"
end

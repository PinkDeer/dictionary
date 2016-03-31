30.times do
  word = Word.create 	:title => "#{Faker::Lorem.word}",
                        :translation => "#{Faker::Lorem.paragraph}",
                        :user_id => "#{1}"

  puts word.inspect
end
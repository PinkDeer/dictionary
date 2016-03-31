30.times do
  word = Word.create 	:title => "#{Faker::Lorem.word}",
                        :translation => "#{Faker::Lorem.paragraph}"
  puts word.inspect
end
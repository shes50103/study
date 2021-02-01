10.times do |index|
  Post.create(body: "This is post #{index}")
end


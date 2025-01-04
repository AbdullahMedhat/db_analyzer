10.times do |i|
  p = Post.find_or_create_by(title: "Post-#{i}")
  3.times { |r| Comment.find_or_create_by(post_id: p.id, body: "Comment-#{r}") }
end

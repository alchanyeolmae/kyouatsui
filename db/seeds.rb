# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_post = Post.new
new_post.content = "첫번째 글이긔"
new_post.save

Post.create(content: '두번째 글이긔')

Post.create(:content => '세번째 글이긔')

new_reply = Reply.new
new_reply.content2 ='첫번째 댓글'
new_reply.post_id ='1'
new_reply.save

Reply.create(:content2 => '두번째 댓글', :post_id => '1')

new_reply = Reply.new
new_reply.content2 = '세번째 댓글'
new_reply.post = new_post
new_reply.save
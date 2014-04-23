a = User.create!(:username => 'Johnson', :email => 'Johnson@john.com')
b = User.create!(:username => 'Herpes', :email => 'troll@alo.com')
c = User.create!(:username => 'Derpity', :email => 'derp@derp.com')


d = Contact.create!(:name => b.username, :email => b.email, :user_id => a.id)
e = Contact.create!(:name => a.username, :email => a.email, :user_id => b.id)
f = Contact.create!(:name => a.username, :email => a.email, :user_id => c.id)
g = Contact.create!(:name => c.username, :email => c.email, :user_id => a.id)

ContactShare.create!(:user_id => c.id, :contact_id => d.id)
ContactShare.create!(:user_id => a.id, :contact_id => e.id)

Comment.create!(body: "You are friends with that guy?! What a dick!", author_id: c.id, object_id: d.id, object_type: "Contact")

Comment.create!(body: "You are friends with that guy?! What a pleasant fellow!", author_id: a.id, object_id: g.id, object_type: "Contact")

Comment.create!(body: "Your name is bland - but I think you're pretty cool.", author_id: b.id, object_id: a.id, object_type: "User")

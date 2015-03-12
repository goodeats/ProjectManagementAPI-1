# Group.destroy_all
# User.destroy_all

# users = User.create!([
#   {username: "Annie", email: "annie@ga.co", password_digest: "yah", title: "web developer", role: "admin", token: "insert_token_here"},
#   {username: "Kelly", email: "kelly@ga.co", password_digest: "yah", title: "web developer", role: "admin", token: "insert_token_here"},
#   {username: "Pat", email: "pat@ga.co", password_digest: "yah", title: "web developer", role: "admin", token: "insert_token_here"},
#   {username: "eCommercer Person", email: "ec@ga.co", password_digest: "yah", title: "web developer", role: "admin", token: "insert_token_here"},
#   {username: "Dating Person", email: "d@ga.co", password_digest: "yah", title: "web developer", role: "admin", token: "insert_token_here"},
#   ])

# groups = Group.create!([
#   {name: "AnnieKellyPat Group", privacy: false},
#   {name: "Ecommerce Group", privacy: false},
#   {name: "Dating Group", privacy: false}
#   ])

# group_projects = Project.create!([
#   {name: "Project Management App",description: "Create an app for users to be more organized when they create their projects", due_date: DateTime.new(2015,3,19,9), privacy: false},
#   {name: "eCommerce App", description: "Create an app to make payments online", due_date: DateTime.new(2015,3,19,9), privacy: false},
#   {name: "Dating App", description: "Create a dating web app", due_date: DateTime.new(2015,3,19,9), privacy: false}
#   ])

# groups[0].projects << group_projects[0]

# groups[1].projects << group_projects[1]

# groups[2].projects << group_projects[2]

# project_tasks = Task.create!([
#   {name: "create back end", due_date: DateTime.new(2015,3,17,9), status: "staged", priority: "high", order: 1, privacy: false},
#   {name: "create back end", due_date: DateTime.new(2015,3,17,9), status: "in progress", priority: "medium", order: 2, privacy: false},
#   {name: "create back end", due_date: DateTime.new(2015,3,17,9), status: "completed", priority: "low", order: 3, privacy: false}
#   ])

# group_projects[0] << project_tasks[0]
# group_projects[1] << project_tasks[1]
# group_projects[2] << project_tasks[2]

# task_comments = Comment.create!([
#   {body: "I <3 project management!"},
#   {body: "I <3 project eCommerce!"},
#   {body: "I <3 project dating!"}
#   ])

# user[0].comments << task_comments[0]
# user[1].comments << task_comments[0]
# user[2].comments << task_comments[0]
# user[3].comments << task_comments[1]
# user[4].comments << task_comments[2]

# project_tasks[0].comments << task_comments[0]
# project_tasks[1].comments << task_comments[1]
# project_tasks[2].comments << task_comments[2]

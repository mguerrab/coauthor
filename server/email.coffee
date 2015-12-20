Accounts.emailTemplates.siteName = 'Coauthor'
Accounts.emailTemplates.from = 'coauthor@coauthor.csail.mit.edu'
Accounts.emailTemplates.verifyEmail.subject = (user) ->
  "Email confirmation for Coauthor"
Accounts.emailTemplates.verifyEmail.text = (user) -> """
  Welcome to Coauthor, #{user.email}!

  You (or someone claiming to be you) just registered an account with username
  "#{user.username}" on the Coauthor collaboration website,
  #{Meteor.absoluteUrl()}

  To confirm that your email address is accurate (necessary for email
  notifications to work), please click on the following link:
"""

Accounts.config
  sendVerificationEmail: true

#Email.send
#  from: 'coauthor@coauthor.csail.mit.edu'
#  to: 'edemaine@mit.edu'
#  subject: 'Testing...'
#  html: '<p>Welcome to Coauthor!</p>We hope you like your stay :)'

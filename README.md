# README

TODO:
add edit function to movies
add delete users button stuff for admin
add option to add picture for users
add bootstrap alerts for logging in, updating settings, creating account
remove create account button for when logged in, or combine
If someone tried to sign in with wrong password, get error message.
remove bootstrap from header and customize

created a user controller and model for new users. Includes validation requirements for name and email.

Added structure to user model, index, so that when searching for a users uniqueness we do not need to do a full-table scan. Instead only the index needs to be scanned.

"The method for authenticating users will be to take a submitted password, hash it, and compare the result to the hashed value stored in the database. If the two match, then the submitted password is correct and the user is authenticated. By comparing hashed values instead of raw passwords, we will be able to authenticate users without storing the passwords themselves. This means that, even if our database is compromised, our users’ passwords will still be secure." from railstuturial.org

added bcrypt to gemfile to prevent attacker from logging into site.

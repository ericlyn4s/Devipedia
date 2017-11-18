# Blocipedia

Blocipedia is a Ruby on Rails -based resource for users to create and edit wikis. Users sign up using an authentication system built with the Devise gem, and can choose to upgrade to a premium membership for a monthly fee. This was made possible with the Stripe development tool, and allows premium users to create and edit private wikis. Users can also downgrade to the standard account and have their private wikis converted to public. The application features a list of all public wikis, as well as pages for creating and editing posts.

This application was created from the ground-up, so I faced several new challenges throughout production. Implementing a fully funcitoning authorization tool was difficult, as I had never worked with the Devise gem before. Working with these new gems taught me how to be more experimental. This flexibility will be a great skill as I incorporate more sophisticated Ruby tools in the future.


## Technologies Used

Languages & Libraries: Ruby on Rails, Bootstrap

Development Tools and Gems: Devise (user authentication), Redcarpt (markdown formatting for wikis), Pundit (authorization), Strip (premium membership payments)

## Setup

1) Clone the repository

2) Run bundle install

3) Create and migrate the SQLite database with `rake db:create` and `rake db:migrate`

4) Start the server locally by typing `rails s` in the terminal

5) View the app on `localhost:3000`

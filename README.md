# README

This is my second attempt at the Odin Rails 'Members Only' project, at https://www.theodinproject.com/lessons/ruby-on-rails-members-only First try I did instructions in a different order and got overwhelmed by Devise --- I stopped and left it on GitHub as 'RailsMembersOnly'.  


I chose to use Authenticatable, Registerable, Recoverable, Rememberable, and Validatable modules of Devise.  

For Recoverable, the password recovery emails are not actually sent in development mode but the console output looks correct for this function.  

This uses Ruby 3.1.2p20, Rails 7.1.2 and Devise 4.9.3 which can be found at https://github.com/heartcombo/devise

Devise has a lot of out-of-the-box functionality, but for a Rails beginner it can be difficult to work out what is going on in terms of views and controllers. 
I am grateful for the assistance of people on the Odin Discord, helping me to generate and inspect the relevant controllers and routes introduced by Devise.

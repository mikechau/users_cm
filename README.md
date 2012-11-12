The Starter League - Fall 2012 - Code Mountain

User Logins:

Steps:

1. rails generate scaffold User name:string username:string password_digest:string email:string name:string
2. Gemfile includes gem brypt-ruby, bundle install
3. Change scaffold generated forms to reflect passwords. /views/_form.html.erb - change input :password_digest to :password and add :password_confirmation, update text_field to password_field
4. Edit model: user.rb, add line for has_secure_password, add :password and :password_confirmation to attr_accesibles line, add validates_presence_of and validates_uniqueness_of
5. Modify Routes for session login: resource :session, :only => [:new, :create, :destroy]
6. rails g controller Sessions new create destroy
7. Sign In Template: app/views/sessions/new.html.erb, form tag to /session
8. Sessions#create method
9. Sessions#destroy method


# HelloApp

Simple app for displaying and adding hello messages for different languages.
It is created for first workshop for KNTAW (Koło Naukowe Tworzenia Aplikacji Webowych).
It uses rails and angular.js combined.

## Setup

It requires `MySQL` to work properly

### Initial setup
```
bundle
bundle exec rake db:create
bundle exec rake db:migrate
```

### Run the server
```
rails s
```
Application is than available at `localhost:3000/hellos`

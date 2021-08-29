# Despues de la configuración del Gemfile
bundle install
rails generate rspec:install

# branch  05/configurar-rspec-factorybot

# branch  06/health-endpoint
mkdir spec/requests
touch spec/requests/health_spec.rb

# branch  09/crear-modelos-validaciones-y-tests
rails g model user email:string name:string auth_token:string 
rails g model post title:string content:string published:boolean user:reference
rails destroy model post
rails g model post title:string content:string published:boolean user:references
rails db:migrate

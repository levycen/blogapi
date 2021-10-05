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

# branch 11/listar-Post-TDD
rails g factory_bot:model User email:string name:string auth_token:string
rails g factory_bot:model Post title:string content:string published:boolean user:references

RAILS_ENV=test rails c
FactoryBot.build(:post)
post = FactoryBot.build(:post)
post.valid?
post.errors

rails routes
rails routes | grep "posts"

require "byebug"

# Branch 15/usando-ActiveModelSerializer
bundle             #para instalar
rails g serializer post     # rails generatos [modelo]

# Branch 19/n+1_query_problem_solution
tail -f log/test.log

# Branch 21/autenticacion_pruebas
user = User.new

# Branch 26/API-usando-postman
user_1 = FactoryBot.create(:user)
user_2 = FactoryBot.create(:user)
posts = FactoryBot.create_list(:post, 10, user: user_1)
posts = FactoryBot.create_list(:post, 10, user: user_2)

_ método clave que se utiliza en rails c que hace referencia al resultado de la última isntrucción

# Branch 28/cache_para_acelerar_busquedas
Activar el cache para develop
rails dev:cache

Testing del cache en rails c
Rails.cache.fetch('qwer') { puts 'cacheando'; 1234 }
Rails.cache.read('qwer')

Ejemplo de el uso de un services desde rails c
PostsSearchService.search(Post.all, "lorem")


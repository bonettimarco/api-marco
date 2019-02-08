# README

* Ruby version - 2.4.1

* System dependencies
mysql-server 
mysql-client

* GEMs utilizadas
gem rails 5.2 
gem mysql2, ~> 0.4.10
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
gem 'rspec-rails'
gem 'database_cleaner'
gem 'has_scope'
gem 'factory_bot', '~> 4.11.1'
gem 'factory_bot_rails', '~> 4.11.1'
gem 'shoulda-matchers', '~> 3.1.2', require: false
gem 'rails-controller-testing'
gem 'rspec-json_expectations'
gem 'json_matchers'


* Configuration
application.rb
    config.generators do |g|
      g.test_framework :rspec,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: true,
                       request_specs: false
      g.fixture_replacement :factory_bot, dir "spec/factories"
    end
    
* Database creation
rake db:create
rakd db:migrate
rake db:seed

* Database initialization
setar o arquivo Database.yml
development:
  adapter: mysql2
  encoding: utf8
  database: api
  username: root
  password: 

test: &test
  adapter: mysql2
  encoding: utf8
  host: mysql-test
  database: api_test
  username: root
  password: 

* How to run the test suite
rspec
Três testes de model
Três testes de request

* Services (job queues, cache servers, search engines, etc.)
rake db:seed

* Instruções de uso
gitclone https://github.com/bonettimarco/api-marco
bundle
rake db:create db:migrate db:seed
rails s

* Controladora que devolve evento por nome deve ser acionada com:
http://localhost:3000/retorna_eventos?nome=My
http://localhost:3000/retorna_eventos?nome=Palestra

* Controladora que cria comentários, recebe como parâmetros text, user_id e event_id
http://url:3000/comments?text=nhonhonho&user_id=1&event_id=1

* Controladora que devolve os comentários que possuem algum report
http://url:3000/comments?report=true


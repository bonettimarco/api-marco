# README

* Ruby version - 2.4.1

* System dependencies
mysql-server 
mysql-client
gem rails 5.2
gem mysql2, ~> 0.4.10
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # rspec
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :test do
  gem 'database_cleaner'
end


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
rakd db:seed

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

production:
  adapter: mysql2
  encoding: utf8
  database: ###IP_PRODUCAO###
  username: ###USUARIO_PRODUCAO###
  password: ###SENHA_PRODUCAO###
  host:

* How to run the test suite
rspec

* Services (job queues, cache servers, search engines, etc.)
rake db:seed

* Instruções de uso

* Controladora que devolve evento por nome deve ser acionada com:
http://url:3000/retorna_eventos?nome=My
http://url:3000/retorna_eventos?nome=Palestra

* Controladora que cria comentários, recebe como parâmetros text, user_id e event_id
http://url:3000/comments?text=nhonhonho&user_id=1&event_id=1

* Controladora que devolve os comentários que possuem algum report
http://url:3000/comments?report=true
# README

* Ruby version - 2.4.1

* System dependencies
mysql-server 
mysql-client

* GEMs utilizadas

gem rails 5.2 <br>
gem mysql2, ~> 0.4.10<br>
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]<br>
gem 'rspec-rails'<br>
gem 'database_cleaner'<br>
gem 'has_scope'<br>
gem 'factory_bot', '~> 4.11.1'<br>
gem 'factory_bot_rails', '~> 4.11.1'<br>
gem 'shoulda-matchers', '~> 3.1.2', require: false<br>
gem 'rails-controller-testing'<br>
gem 'rspec-json_expectations'<br>
gem 'json_matchers'<br>


* Configuration
application.rb<br>
    config.generators do |g|<br>
      g.test_framework :rspec,<br>
                       fixtures: true,<br>
                       view_specs: false,<br>
                       helper_specs: false,<br>
                       routing_specs: false,<br>
                       controller_specs: true,<br>
                       request_specs: false<br>
      g.fixture_replacement :factory_bot, dir "spec/factories"<br>
    end<br>
    
* Database creation<br>
rake db:create<br>
rakd db:migrate<br>
rake db:seed<br>

* Database initialization<br>
setar o arquivo Database.yml<br>
development:<br>
  adapter: mysql2<br>
  encoding: utf8<br>
  database: api<br>
  username: root<br>
  password: <br>

test: <br>
  adapter: mysql2<br>
  encoding: utf8<br>
  host: mysql-test<br>
  database: api_test<br>
  username: root<br>
  password: <br>

* How to run the test suite<br>
rspec<br>
Três testes de model<br>
Três testes de request<br>

* Services (job queues, cache servers, search engines, etc.)<br>
rake db:seed

* Instruções de uso<br>
gitclone https://github.com/bonettimarco/api-marco<br>
bundle<br>
rake db:create db:migrate db:seed<br>
rails s

* Controladora que devolve evento por nome deve ser acionada com:<br>
http://localhost:3000/retorna_eventos?nome=My<br>
http://localhost:3000/retorna_eventos?nome=Palestra<br>
sem consulta<br>
http://localhost:3000/retorna_eventos<br>

* Controladora que cria comentários, recebe como parâmetros text, user_id e event_id<br>
http://localhost:3000/comments?text=nhonhonho&user_id=1&event_id=1<br>

* Controladora que devolve os comentários que possuem algum report<br>
http://localhost:3000/comments?report=true

todos comentários
http://localhost:3000/comments
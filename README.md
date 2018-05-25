# README
* Create Project 
    - "rails new name_project"
    
* Database initialization
    - Install mysql gem file: "gem 'mysql2', '~> 0.4.4'"
    - Connect mysql database: config/database.yml
       "default: &default
          adapter: mysql2
          encoding: utf8
          pool: 5
          username: root
          password: ""
          socket: /var/run/mysqld/mysqld.sock
        
        development:
          <<: *default
          database: demostruck2
        
        test:
          <<: *default
          database: demostruck2_test
        
        production:
          <<: *default
          database: demostruck2_production
          username: demostruck2
          password: <%= ENV['LOGIN_APP_DATABASE_PASSWORD'] %>"
          
* Create scaffold
    rails g scaffold <tên bảng> <tên trường 1:kiểu dữ liệu> <tên trường 2:kiểu dữ liệu>...<tên trường n:kiểu dữ liệu>

* Rake database
    rake db:migrate
    
* Rake seed database
    rake db:seed

* Add column to table
    rails generate migration add_A_to_B column_name:type
    
* Render kaminari_config file
    rails g kaminari:config

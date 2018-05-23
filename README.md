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




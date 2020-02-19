# README

## How to setup
1. Install docker: https://github.com/carlaraya/docker-instructions
1. Install git
1. Clone this repo: `$ git clone https://github.com/carlaraya/genomic-db`
1. Go into the new directory: `$ cd genomic-db`
1. Build the docker images: `$ docker-compose build`
1. Setup the database: `$ docker-compose run web rails db:create db:migrate`
1. Start the server: `$ docker-compose up`

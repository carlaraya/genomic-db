# Todo

## How to setup
1. Install docker: https://github.com/carlaraya/docker-instructions
1. Install git
1. Clone this repo: `$ git clone https://github.com/carlaraya/genomic-db`
1. Go into the new directory: `$ cd genomic-db`
1. Build the docker images: `$ docker-compose build`
1. Setup the database: `$ docker-compose run web rails db:create db:migrate`
1. Start the server: `$ docker-compose up`

## Todo
1. [DONE] Read up on jbuilder
1. [DONE] Install semantic ui and add html code from old repo
1. Add attachment to dataset model that saves to local storage
1. Add rspec tests
1. Search how to do cron jobs in rails or nodejs
